SELECT DISTINCT Date,CountryCode,COUNT(`Covid_Count`) over (partition by `Date`,`CountryCode`) Count_covid,
COUNT(`Corona_Count`) over (partition by `Date`,`CountryCode`) Count_corona ,
COUNT(`Delta_Count`) over (partition by `Date`,`CountryCode`) Count_delta ,
COUNT(`Omicron_Count`) over (partition by `Date`,`CountryCode`) Count_omicron,
COUNT(`Covid_test_Count`) over (partition by `Date`,`CountryCode`) Count_CovidTest ,
COUNT(`Death_Count`) over (partition by `Date`,`CountryCode`) Count_death ,
COUNT(`FaceMask_Count`) over (partition by `Date`,`CountryCode`) Count_facemask ,
COUNT(`Lockdown_Count`) over (partition by `Date`,`CountryCode`) Count_lockdown ,
COUNT(`Quarantine_Count`) over (partition by `Date`,`CountryCode`) Count_quarantine ,
COUNT(`Vaccine_Count`) over (partition by `Date`,`CountryCode`) Count_vaccine ,
COUNT(`Relaxation_Count`) over (partition by `Date`,`CountryCode`) Count_relaxation ,
COUNT(`Recovery_Count`) over (partition by `Date`,`CountryCode`) Count_recovery ,
COUNT(`SocialDistance_Count`) over (partition by `Date`,`CountryCode`) Count_socialDistance ,
Covid_Count, Delta_Count, Omicron_Count, Corona_Count, Covid_test_Count, Death_Count, FaceMask_Count, Lockdown_Count, Quarantine_Count, Vaccine_Count,
Relaxation_Count, Recovery_Count, SocialDistance_Count
FROM
(SELECT 
`onlinenewsgeo`.`CountryCode` AS `CountryCode`,
  `onlinenewsgeo`.`ContextualText` AS `ContextualText`,
  DATE(`onlinenewsgeo`.`DateTime`) AS `Date`,
    CASE WHEN LOWER(`ContextualText`) like '%covid%' THEN 'Covid' END `Covid_Count`,
    CASE WHEN LOWER(`ContextualText`) like '%corona%' THEN 'Corona' END `Corona_Count`,
    CASE WHEN LOWER(`ContextualText`) like '%delta%' THEN 'Delta' END `Delta_Count`,
    CASE WHEN LOWER(`ContextualText`) like '%omicron%' THEN 'Omicron' END `Omicron_Count`,
    CASE WHEN LOWER(`ContextualText`) like '%covid test%' THEN 'Covid test' END `Covid_test_Count`,
    CASE WHEN LOWER(`ContextualText`) like '%death%' THEN 'Death' END `Death_Count`,
    CASE WHEN LOWER(`ContextualText`) like '%face mask%' THEN 'Face Mask' END `FaceMask_Count`,
    CASE WHEN LOWER(`ContextualText`) like '%lockdown%' THEN 'Lockdown' END `Lockdown_Count`,
    CASE WHEN LOWER(`ContextualText`) like '%quarantin%' THEN 'Quarantine' END `Quarantine_Count`,
    CASE WHEN LOWER(`ContextualText`) like '%vaccin%' THEN 'Vaccine' END `Vaccine_Count`,
    CASE WHEN LOWER(`ContextualText`) like '%relaxation%' THEN 'Relaxation' END `Relaxation_Count`,
    CASE WHEN LOWER(`ContextualText`) like '%recover%' THEN 'Recovery' END `Recovery_Count`,
    CASE WHEN LOWER(`ContextualText`) like '%social distanc%' THEN 'SocialDistance' END `SocialDistance_Count`
FROM `gdelt-bq.covid19`.`onlinenewsgeo` `onlinenewsgeo` 
WHERE DATE(`onlinenewsgeo`.`DateTime`) between "2019-12-01" and "2022-02-01")s ORDER BY 1