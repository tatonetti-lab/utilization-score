# Adjusting for Healthcare Utilization Improves the Performance of Self-Controlled Case Series Studies using Electronic Health Records

## Abstract

**Objective**: Self-controlled case series (SCCS) studies using observational data can be an effective approach to identifying adverse drug events but are limited due to common biases found in longitudinal clinical data. 

**Materials and Methods**: We calculated an interval-specific utilization score to adjust for bias between ‘risk’ and ‘baseline’ periods using the patient’s number of visits, diagnoses, prescriptions, and days in the hospital. We applied our method to estimate the drug effect for known drug-event pairs from a reference set of adverse drug events (ADE) using EHR data and then used claims data for validation. We compared the performance of a baseline SCCS model to one that included the interval-specific utilization score as a covariate using four performance metrics: AUROC, coverage, bias, and mean squared error.

**Results**: Of the 399 drug-event pairs in the reference set, we had sufficient data to perform our prediction tasks on 224 pairs using EHR data and 370 pairs using claims data. We demonstrate key differences between ‘risk’ and ‘baseline’ periods which would bias the results of an SCCS study. We created the utilization score and found that it was effective in increasing coverage and decreasing bias.

**Conclusion**: In this study, we show inherent differences between ‘risk and ‘baseline’ periods when using EHR data. We introduce a utilization score to address these biases to produce more reliable drug safety estimates. Our results show that introducing a utilization score mitigates the effects of the biases of using observational clinical data in SCCS studies.

This repository hosts code, figures, and additional data relevant to this project.

Questions about the specifics in this repository can be raised by opening an 
issue or contacting [**@undinag**](https://github.com/undinag).


