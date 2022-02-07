-- Os 10 campeões mais banidos

SELECT  
    ban as mais_banidos,
    champ.classe_primaria,
    champ.Classe_Secundaria,
     COUNT(ban) AS countBan
FROM
    (SELECT ban_1 AS ban FROM bans
     UNION ALL
     SELECT ban_2 AS ban FROM bans
     UNION ALL
     SELECT ban_3 AS ban FROM bans
    ) as totalBans
inner join champions champ
on ban = champ.nome
GROUP BY ban
HAVING COUNT(ban) > 0 AND ban != '' 
order by countBan desc
limit 25;