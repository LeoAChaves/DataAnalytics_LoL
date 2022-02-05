-- Quais os campeões mais pickados em 2015?

SELECT  
	topChamp as topFavorito,
    champ.classe_primaria,
    champ.Classe_Secundaria,
     COUNT(topChamp) AS countTop
FROM
    (SELECT year, blueTopChamp AS topChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, redTopChamp AS topChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, blueJungleChamp AS JungleChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, redJungleChamp AS JungleChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, blueMiddleChamp AS MiddleChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, redMiddleChamp AS MiddleChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, blueADCChamp AS ADCChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, redADCChamp AS ADCChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, blueSupportChamp AS SupportChamp FROM matchinfo where year like '2015'
     UNION ALL
     SELECT year, redSupportChamp AS SupportChamp FROM matchinfo where year like '2015'
    ) as redBlueTop
inner join champions champ
on topchamp = champ.nome
GROUP BY topChamp
HAVING COUNT(topChamp) > 0 AND topChamp != '' 
order by countTop desc
limit 10
;


-- Quais os campeões mais pickados em 2016?

SELECT  
	topChamp as topFavorito,
    champ.classe_primaria,
    champ.Classe_Secundaria,
     COUNT(topChamp) AS countTop
FROM
    (SELECT year, blueTopChamp AS topChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, redTopChamp AS topChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, blueJungleChamp AS JungleChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, redJungleChamp AS JungleChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, blueMiddleChamp AS MiddleChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, redMiddleChamp AS MiddleChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, blueADCChamp AS ADCChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, redADCChamp AS ADCChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, blueSupportChamp AS SupportChamp FROM matchinfo where year like '2016'
     UNION ALL
     SELECT year, redSupportChamp AS SupportChamp FROM matchinfo where year like '2016'
    ) as redBlueTop
inner join champions champ
on topchamp = champ.nome
GROUP BY topChamp
HAVING COUNT(topChamp) > 0 AND topChamp != '' 
order by countTop desc
limit 10
;

-- Quais os campeões mais pickados em 2017?

SELECT  
	topChamp as topFavorito,
    champ.classe_primaria,
    champ.Classe_Secundaria,
     COUNT(topChamp) AS countTop
FROM
    (SELECT year, blueTopChamp AS topChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, redTopChamp AS topChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, blueJungleChamp AS JungleChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, redJungleChamp AS JungleChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, blueMiddleChamp AS MiddleChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, redMiddleChamp AS MiddleChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, blueADCChamp AS ADCChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, redADCChamp AS ADCChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, blueSupportChamp AS SupportChamp FROM matchinfo where year like '2017'
     UNION ALL
     SELECT year, redSupportChamp AS SupportChamp FROM matchinfo where year like '2017'
    ) as redBlueTop
inner join champions champ
on topchamp = champ.nome
GROUP BY topChamp
HAVING COUNT(topChamp) > 0 AND topChamp != '' 
order by countTop desc
limit 10
;
