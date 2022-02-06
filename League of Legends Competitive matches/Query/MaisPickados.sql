-- Quais os campeões mais pickados?

SELECT  
	topChamp as topFavorito,
    champ.classe_primaria,
    champ.Classe_Secundaria,
     COUNT(topChamp) AS countTop
FROM
    (SELECT year, blueTopChamp AS topChamp FROM matchinfo
     UNION ALL
     SELECT year, redTopChamp AS topChamp FROM matchinfo
     UNION ALL
     SELECT year, blueJungleChamp AS topChamp FROM matchinfo
     UNION ALL
     SELECT year, redJungleChamp AS topChamp FROM matchinfo
     UNION ALL
     SELECT year, blueMiddleChamp AS topChamp FROM matchinfo
     UNION ALL
     SELECT year, redMiddleChamp AS topChamp FROM matchinfo
     UNION ALL
     SELECT year, blueADCChamp AS topChamp FROM matchinfo
     UNION ALL
     SELECT year, redADCChamp AS topChamp FROM matchinfo
     UNION ALL
     SELECT year, blueSupportChamp AS topChamp FROM matchinfo
     UNION ALL
     SELECT year, redSupportChamp AS topChamp FROM matchinfo
    ) as redBlueTop
inner join champions champ
on topchamp = champ.nome
GROUP BY topChamp
HAVING COUNT(topChamp) > 0 AND topChamp != '' 
order by countTop desc
limit 10
;