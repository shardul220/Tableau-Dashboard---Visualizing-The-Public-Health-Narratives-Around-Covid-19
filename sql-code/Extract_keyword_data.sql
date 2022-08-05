SELECT * FROM(
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%corona%' THEN 'Corona' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%quarantin%' THEN 'Quarantine' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%covid%' THEN 'Covid' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%delta%' THEN 'Delta' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%omicron%' THEN 'Omicron' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%covid test%' THEN 'Covid test' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%death%' THEN 'Death' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%face mask%' THEN 'Face Mask' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%lockdown%' THEN 'Lockdown' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%vaccin%' THEN 'Vaccine' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%relaxation%' THEN 'Relaxation' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%recover%' THEN 'Recovery' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%social distanc%' THEN 'SocialDistance' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%asymptomatic%' THEN 'Asymptomatic' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%isolation%' THEN 'Isolation' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%ppe%' THEN 'PPE' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%n95%' THEN 'N95' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%pandemic%' THEN 'Pandemic' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%cancelled%' THEN 'Cancelled' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%china%' THEN 'China' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%infected%' THEN 'Infected' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%flights%' THEN 'Flights' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
UNION ALL
(SELECT 
  DATE(`tvnews`.`MatchDateTimeStamp`) AS `Date`,
    CASE WHEN LOWER(`Snippet`) like '%virus%' THEN 'Virus' END `Word_Count`
FROM `gdelt-bq.covid19`.`tvnews` `tvnews` 
WHERE DATE(`tvnews`.`MatchDateTimeStamp`) between "2019-12-01" and "2022-02-01" ORDER BY 1)
)
WHERE Word_Count IS NOT NULL ORDER BY Date