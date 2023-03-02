# Adjusting for Healthcare Utilization Improves the Performance of Self-Controlled Case Series Studiesusing Electronic Health Records

## Abstract

Adverse drug events (ADEs) can lead to hospitalization, serious morbidity 
and even death. Self-controlled case series (SCCS) studies using electronic
health records (EHR) can be an effective approach to identifying adverse drug 
events but are limited due to common biases found in longitudinal clinical data.
A common approach to address these biases is to manually curate negative 
controls but this method is time-consuming and requires expert knowledge. 
In this study, we introduce an interval-specific utilization score to adjust 
for bias between ‘risk’ and ‘baseline’ periods using the patient’s number of 
visits, diagnoses, prescriptions, and days in the hospital. We applied our 
method to estimate the drug effect for known drug-event pairs from a reference 
set of adverse drug events (ADE) using EHR data and validated our approach 
using claims data. We compared the performance of a baseline SCCS model to one 
that included the interval-specific utilization score as a covariate using four 
performance metrics: AUROC, coverage, bias, and mean squared error. 
We demonstrated key differences between ‘risk’ and ‘baseline’ periods EHR data 
which would bias the results of a SCCS study. 
This difference can lead to an increase in false positives in association 
studies between drugs and adverse events. 
We found that the interval-specific utilization score was effective in 
increasing coverage and decreasing bias.
Our results show that introducing a utilization score may reduce bias in 
SCCS studies and allow for more reliable drug safety research.


This repository hosts figures and additional data relevant for this project.

Questions about the specifics in this repository can be raised by opening an 
issue or contacting @undinag


