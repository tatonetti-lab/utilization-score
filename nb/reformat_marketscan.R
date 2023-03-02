library(tidyverse)
library(lubridate)
library(RJDBC)
library(DBI)

datasource <- 'ccae'  # MDCD, MDCR or CCAE

drv <- JDBC("net.sourceforge.jtds.jdbc.Driver",
            "/data1/home/uog2000/projects/mysql_connector/jtds-1.3.1.jar") 
con.string <- str_glue("...databaseName=cdm_{datasource}")
con <- dbConnect(drv, con.string, ...)

write_to_table = function(person, drug, start, end, risk) {
    if (!file.exists(str_glue('uog_ade_sccs_{datasource}.csv'))) {
        write_csv(x = data.frame(person_id=person,
                                 DRUG_CONCEPT_ID=drug,
                                 start_date=start,
                                 end_date=end,
                                 risk=risk),
                  path = str_glue('uog_ade_sccs_{datasource}.csv'))
        count = count + 1
    } else {
        write_csv(x = data.frame(person_id=person,
                                 DRUG_CONCEPT_ID=drug,
                                 start_date=start,
                                 end_date=end,
                                 risk=risk),
                  path = str_glue('uog_ade_sccs_{datasource}.csv'),
                  append = T)
    }
}


first_date = as.Date('2008-01-01', format = "%Y-%m-%d")
last_date = as.Date('2017-12-31', format = "%Y-%m-%d")

val = list(prev_person='person_id',
           prev_drug='DRUG_CONCEPT_ID',
           current_start='start',
           current_end='drug_end',
           risk = 'risk')

rs <- dbSendQuery(con, "SELECT * FROM results.ade_drug ORDER BY person_id, DRUG_CONCEPT_ID, drug_start;")
count = 0
while (!dbHasCompleted(rs)) {
    chunk <- dbFetch(rs, 1)
    
    if (count %% 100 == 0) {
        write(str_glue("count: {val$prev_person}"), stdout())
    }
    
    # not same person
    if (val$prev_person != chunk$person_id) {
        if (count != 0) {
            write_to_table(val$prev_person, val$prev_drug, val$current_start, val$current_end, 1)
            count = count + 1
            write_to_table(val$prev_person, val$prev_drug, val$current_end, last_date, 0)
            count = count + 1
        }
        val[c("prev_person", "prev_drug", "current_start", "current_end")] = chunk[,
                                                                                          c('person_id',
                                                                                            'DRUG_CONCEPT_ID',
                                                                                            'drug_start',
                                                                                            'drug_end')]
        if (chunk[['drug_start']] > first_date) {
            write_to_table(val$prev_person, val$prev_drug, first_date, chunk$drug_start, 0)
            count = count + 1
        }
        next
    }
    # same drug
    if (val$prev_drug != chunk[['DRUG_CONCEPT_ID']]) {
        write_to_table(val$prev_person, val$prev_drug, val$current_start, val$current_end, 1)
        count = count + 1
        write_to_table(val$prev_person, val$prev_drug, val$current_end, last_date, 0)
        count = count + 1
        
        val[c("prev_person", "prev_drug", "current_start", "current_end")] = chunk[,
                                                                                          c('person_id',
                                                                                            'DRUG_CONCEPT_ID',
                                                                                            'drug_start',
                                                                                            'drug_end')]
        if (chunk[['drug_start']] > first_date) {
            write_to_table(val$prev_person, val$prev_drug, first_date, chunk$drug_start, 0)
            count = count + 1
        }
        next
    }
    
    # if same person and same drug check if current_end overlaps with previous start
    if (as.Date(val$current_end) >= chunk[['drug_start']]) {
        val$current_end = chunk[['drug_end']]
    } else {
        write_to_table(val$prev_person, val$prev_drug, val$current_start, val$current_end, 1)
        count = count + 1
        write_to_table(val$prev_person, val$prev_drug, val$current_end, chunk$drug_start, 0)
        count = count + 1
        val$current_start = chunk$drug_start
        val$current_end = chunk$drug_end
    }
    
    
}

write_to_table(val$prev_person, val$prev_drug, val$current_start, val$current_end, 1)
write_to_table(val$prev_person, val$prev_drug, val$current_end, last_date, 0)

