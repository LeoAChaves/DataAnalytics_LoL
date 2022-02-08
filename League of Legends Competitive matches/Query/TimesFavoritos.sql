-- Qual o top 5 dos personagens utilizado em cada posição em 2015?

SELECT  
    topChamp as topFavorito,
     COUNT(topChamp) AS countTop
FROM
    (SELECT year, blueTopChamp AS topChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, redTopChamp AS topChamp FROM matchinfo where year like '2015'
    ) as redBlueTop
GROUP BY topChamp
HAVING COUNT(topChamp) > 0 AND topChamp != '' 
order by countTop desc
limit 5;

SELECT  
    JungleChamp as JungleFavorito,
     COUNT(JungleChamp) AS countJungle
FROM
    (SELECT year, blueJungleChamp AS JungleChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, redJungleChamp AS JungleChamp FROM matchinfo where year like '2015'
    ) as redBlueJungle
GROUP BY JungleChamp
HAVING COUNT(JungleChamp) > 0 AND JungleChamp != '' 
order by countJungle desc
limit 5;

SELECT  
    MiddleChamp as MiddleFavorito,
     COUNT(MiddleChamp) AS countMiddle
FROM
    (SELECT year, blueMiddleChamp AS MiddleChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, redMiddleChamp AS MiddleChamp FROM matchinfo where year like '2015'
    ) as redBlueMiddle
GROUP BY MiddleChamp
HAVING COUNT(MiddleChamp) > 0 AND MiddleChamp != '' 
order by countMiddle desc
limit 5;

SELECT  
    ADCChamp as ADCFavorito,
     COUNT(ADCChamp) AS countADC
FROM
    (SELECT year, blueADCChamp AS ADCChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, redADCChamp AS ADCChamp FROM matchinfo where year like '2015'
    ) as redBlueADC
GROUP BY ADCChamp
HAVING COUNT(ADCChamp) > 0 AND ADCChamp != '' 
order by countADC desc
limit 5;

SELECT  
    SupportChamp as SupportFavorito,
     COUNT(SupportChamp) AS countSupport
FROM
    (SELECT year, blueSupportChamp AS SupportChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, redSupportChamp AS SupportChamp FROM matchinfo where year like '2015'
    ) as redBlueSupport
GROUP BY SupportChamp
HAVING COUNT(SupportChamp) > 0 AND SupportChamp != '' 
order by countSupport desc
limit 5;

-- Qual o top 5 dos personagens utilizado em cada posição em 2016?

SELECT  
    topChamp as topFavorito,
     COUNT(topChamp) AS countTop
FROM
    (SELECT year, blueTopChamp AS topChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, redTopChamp AS topChamp FROM matchinfo where year like '2016'
    ) as redBlueTop
GROUP BY topChamp
HAVING COUNT(topChamp) > 0 AND topChamp != '' 
order by countTop desc
limit 5;

SELECT  
    JungleChamp as JungleFavorito,
     COUNT(JungleChamp) AS countJungle
FROM
    (SELECT year, blueJungleChamp AS JungleChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, redJungleChamp AS JungleChamp FROM matchinfo where year like '2016'
    ) as redBlueJungle
GROUP BY JungleChamp
HAVING COUNT(JungleChamp) > 0 AND JungleChamp != '' 
order by countJungle desc
limit 5;

SELECT  
    MiddleChamp as MiddleFavorito,
     COUNT(MiddleChamp) AS countMiddle
FROM
    (SELECT year, blueMiddleChamp AS MiddleChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, redMiddleChamp AS MiddleChamp FROM matchinfo where year like '2016'
    ) as redBlueMiddle
GROUP BY MiddleChamp
HAVING COUNT(MiddleChamp) > 0 AND MiddleChamp != '' 
order by countMiddle desc
limit 5;

SELECT  
    ADCChamp as ADCFavorito,
     COUNT(ADCChamp) AS countADC
FROM
    (SELECT year, blueADCChamp AS ADCChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, redADCChamp AS ADCChamp FROM matchinfo where year like '2016'
    ) as redBlueADC
GROUP BY ADCChamp
HAVING COUNT(ADCChamp) > 0 AND ADCChamp != '' 
order by countADC desc
limit 5;

SELECT  
    SupportChamp as SupportFavorito,
     COUNT(SupportChamp) AS countSupport
FROM
    (SELECT year, blueSupportChamp AS SupportChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, redSupportChamp AS SupportChamp FROM matchinfo where year like '2016'
    ) as redBlueSupport
GROUP BY SupportChamp
HAVING COUNT(SupportChamp) > 0 AND SupportChamp != '' 
order by countSupport desc
limit 5;

-- Qual o top 5 dos personagens utilizado em cada posição em 2017?

SELECT  
    topChamp as topFavorito,
     COUNT(topChamp) AS countTop
FROM
    (SELECT year, blueTopChamp AS topChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, redTopChamp AS topChamp FROM matchinfo where year like '2017'
    ) as redBlueTop
GROUP BY topChamp
HAVING COUNT(topChamp) > 0 AND topChamp != '' 
order by countTop desc
limit 5;

SELECT  
    JungleChamp as JungleFavorito,
     COUNT(JungleChamp) AS countJungle
FROM
    (SELECT year, blueJungleChamp AS JungleChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, redJungleChamp AS JungleChamp FROM matchinfo where year like '2017'
    ) as redBlueJungle
GROUP BY JungleChamp
HAVING COUNT(JungleChamp) > 0 AND JungleChamp != '' 
order by countJungle desc
limit 5;

SELECT  
    MiddleChamp as MiddleFavorito,
     COUNT(MiddleChamp) AS countMiddle
FROM
    (SELECT year, blueMiddleChamp AS MiddleChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, redMiddleChamp AS MiddleChamp FROM matchinfo where year like '2017'
    ) as redBlueMiddle
GROUP BY MiddleChamp
HAVING COUNT(MiddleChamp) > 0 AND MiddleChamp != '' 
order by countMiddle desc
limit 5;

SELECT  
    ADCChamp as ADCFavorito,
     COUNT(ADCChamp) AS countADC
FROM
    (SELECT year, blueADCChamp AS ADCChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, redADCChamp AS ADCChamp FROM matchinfo where year like '2017'
    ) as redBlueADC
GROUP BY ADCChamp
HAVING COUNT(ADCChamp) > 0 AND ADCChamp != '' 
order by countADC desc
limit 5;

SELECT  
    SupportChamp as SupportFavorito,
     COUNT(SupportChamp) AS countSupport
FROM
    (SELECT year, blueSupportChamp AS SupportChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, redSupportChamp AS SupportChamp FROM matchinfo where year like '2017'
    ) as redBlueSupport
GROUP BY SupportChamp
HAVING COUNT(SupportChamp) > 0 AND SupportChamp != '' 
order by countSupport desc
limit 5;