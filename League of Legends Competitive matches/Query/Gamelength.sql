-- As partidas mais longas

select league, year, blueTeamTag, bResult, redTeamTag, rResult, gamelength from matchinfo
order by gamelength desc
limit 10;

-- As partidas mais rápidas

select league, year, blueTeamTag, bResult, redTeamTag, rResult, gamelength from matchinfo
order by gamelength desc
limit 10;

-- Soma do tempo total de partidas

select sum(gamelength) from matchinfo;

-- Media = 282026 / 7620 = 37