-- After running reformat_marketscan.R R scripts and import table

-- create indexes
create index person_id
    on results.uog_ade_sccs_ccae (person_id);

create index drug_concept_id
    on results.uog_ade_sccs_ccae (drug_concept_id);

create index joining
        on results.uog_ade_sccs_ccae (person_id, drug_concept_id, start_date, end_date);

-- ADD FEATURES FOR UTILIZATION SCORE --
-- Number of:
-- -- conditions (condition_occurrences)
-- -- drugs (drug_exposures)
-- -- visits (overall, ER, inpatient and outpatient)
-- -- days in the hospital
-- as well as cage

 drop table if exists #num_conds;
 SELECT
    sc.person_id as person_id
     , drug_concept_id
     , start_date
     , end_date
     , count(distinct condition_occurrence_id) as num_conds
INTO #num_conds
FROM  results.uog_ade_sccs_ccae as sc
INNER JOIN dbo.CONDITION_OCCURRENCE on CONDITION_OCCURRENCE.person_id = sc.person_id
WHERE condition_start_date between start_date and end_date
GROUP BY sc.person_id, drug_concept_id, start_date, end_date;

create index joining
    on #num_conds (person_id, drug_concept_id, start_date, end_date);

drop table if exists #num_drugs;
SELECT sc.person_id as person_id
     , sc.drug_concept_id as drug_concept_id
     , start_date
     , end_date
     , count(distinct drug_exposure_id) as num_drugs
INTO #num_drugs
FROM results.uog_ade_sccs_ccae sc
INNER JOIN dbo.DRUG_EXPOSURE on DRUG_EXPOSURE.person_id = sc.person_id
WHERE drug_exposure_start_date between start_date and end_date
GROUP BY sc.person_id, sc.drug_concept_id, start_date, end_date;

create index joining
    on #num_drugs (person_id, drug_concept_id, start_date, end_date);


-- 9201,Inpatient Visit
-- 9202,Outpatient Visit
-- 9203,Emergency Room Visit
drop table if exists #visits;
SELECT sc.person_id as person_id
     , drug_concept_id
     , start_date
     , end_date
     , visit_occurrence_id -- count(distinct visit_occurrence_id) as visit
     , CASE WHEN visit_concept_id = 9201 THEN 1 ELSE 0 END as inpat
     , CASE WHEN visit_concept_id = 9202 THEN 1 ELSE 0 END as outpat
     , CASE WHEN visit_concept_id = 9203 THEN 1 ELSE 0 END as ER
     , DATEDIFF(day, visit_end_date, visit_start_date) as days
INTO #visits
FROM results.uog_ade_sccs_ccae as sc
INNER JOIN dbo.visit_occurrence on visit_occurrence.PERSON_ID = sc.person_id
WHERE visit_start_date between start_date and end_date;

create index joining
    on #visits (person_id, drug_concept_id, start_date, end_date);

drop table if exists results.uog_sccs_wcounts;
SELECT sc.person_id as person_id
     , sc.drug_concept_id as drug_concept_id
     , sc.start_date as start_date
     , sc.end_date as end_date
     , risk
     , DATEDIFF(day, sc.end_date, sc.start_date) as duration
     , COALESCE(num_conds, 0) as num_conds
     , COALESCE(num_drugs, 0) as num_drugs
     , count(distinct visit_occurrence_id) as num_visits
     , COALESCE(SUM(inpat), 0) as num_inpat
     , COALESCE(SUM(outpat), 0) as num_outpat
     , COALESCE(SUM(ER), 0) as num_ER
     , COALESCE(SUM(days), 0) as num_days_hosp
INTO results.uog_sccs_wcounts
FROM results.uog_ade_sccs_ccae as sc
LEFT JOIN #num_conds on
     #num_conds.person_id = sc.person_id
    AND #num_conds.drug_concept_id = sc.person_id
    AND #num_conds.start_date = sc.start_date
    AND #num_conds.end_date = sc.end_date
LEFT JOIN #num_drugs on
    #num_drugs.person_id = sc.person_id
    AND #num_drugs.drug_concept_id = sc.person_id
    AND #num_drugs.start_date = sc.start_date
    AND #num_drugs.end_date = sc.end_date
LEFT JOIN #visits on
    #visits.person_id = sc.person_id
    AND #visits.drug_concept_id = sc.person_id
    AND #visits.start_date = sc.start_date
    AND #visits.end_date = sc.end_date
GROUP BY sc.person_id, sc.drug_concept_id, sc.start_date, sc.end_date
       , risk, COALESCE(num_conds, 0), COALESCE(num_drugs, 0)

create index person_id
    on results.uog_sccs_wcounts (person_id);
