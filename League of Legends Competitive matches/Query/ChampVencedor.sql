-- Quais o campeões que mais granharam em 2015

select Personagem, count(Personagem) as Venceu
from (select year, blueTopChamp as Personagem from matchinfo where year like '2015' and bResult like '1'
union all
select year, blueJungleChamp as Personagem from matchinfo where year like '2015' and bResult like '1'
union all
select year, blueMiddleChamp as Personagem from matchinfo where year like '2015' and bResult like '1'
union all
select year, blueADCChamp as Personagem from matchinfo where year like '2015' and bResult like '1'
union all
select year, blueSupportChamp as Personagem from matchinfo where year like '2015' and bResult like '1'
union all
select year, redTopChamp as Personagem from matchinfo where year like '2015' and rResult like '1'
union all
select year, redJungleChamp as Personagem from matchinfo where year like '2015' and rResult like '1'
union all
select year, redMiddleChamp as Personagem from matchinfo where year like '2015' and rResult like '1'
union all
select year, redADCChamp as Personagem from matchinfo where year like '2015' and rResult like '1'
union all
select year, redSupportChamp as Personagem from matchinfo where year like '2015' and rResult like '1'
) as vitoriosos
group by Personagem
order by Venceu desc
limit 10;

-- Quais os campeõs que mais ganhram 2016

select Personagem, count(Personagem) as Venceu
from (select year, blueTopChamp as Personagem from matchinfo where year like '2016' and bResult like '1'
union all
select year, blueJungleChamp as Personagem from matchinfo where year like '2016' and bResult like '1'
union all
select year, blueMiddleChamp as Personagem from matchinfo where year like '2016' and bResult like '1'
union all
select year, blueADCChamp as Personagem from matchinfo where year like '2016' and bResult like '1'
union all
select year, blueSupportChamp as Personagem from matchinfo where year like '2016' and bResult like '1'
union all
select year, redTopChamp as Personagem from matchinfo where year like '2016' and rResult like '1'
union all
select year, redJungleChamp as Personagem from matchinfo where year like '2016' and rResult like '1'
union all
select year, redMiddleChamp as Personagem from matchinfo where year like '2016' and rResult like '1'
union all
select year, redADCChamp as Personagem from matchinfo where year like '2016' and rResult like '1'
union all
select year, redSupportChamp as Personagem from matchinfo where year like '2016' and rResult like '1'
) as vitoriosos
group by Personagem
order by Venceu desc
limit 10;

-- Quais os campeõs que mais ganhram 2017

select Personagem, count(Personagem) as Venceu
from (select year, blueTopChamp as Personagem from matchinfo where year like '2017' and bResult like '1'
union all
select year, blueJungleChamp as Personagem from matchinfo where year like '2017' and bResult like '1'
union all
select year, blueMiddleChamp as Personagem from matchinfo where year like '2017' and bResult like '1'
union all
select year, blueADCChamp as Personagem from matchinfo where year like '2017' and bResult like '1'
union all
select year, blueSupportChamp as Personagem from matchinfo where year like '2017' and bResult like '1'
union all
select year, redTopChamp as Personagem from matchinfo where year like '2017' and rResult like '1'
union all
select year, redJungleChamp as Personagem from matchinfo where year like '2017' and rResult like '1'
union all
select year, redMiddleChamp as Personagem from matchinfo where year like '2017' and rResult like '1'
union all
select year, redADCChamp as Personagem from matchinfo where year like '2017' and rResult like '1'
union all
select year, redSupportChamp as Personagem from matchinfo where year like '2017' and rResult like '1'
) as vitoriosos
group by Personagem
order by Venceu desc
limit 10;

-- Quais os campeõs que mais perderam 2015

select Personagem, count(Personagem) as Perdeu
from (select year, blueTopChamp as Personagem from matchinfo where year like '2015' and bResult like '0'
union all
select year, blueJungleChamp as Personagem from matchinfo where year like '2015' and bResult like '0'
union all
select year, blueMiddleChamp as Personagem from matchinfo where year like '2015' and bResult like '0'
union all
select year, blueADCChamp as Personagem from matchinfo where year like '2015' and bResult like '0'
union all
select year, blueSupportChamp as Personagem from matchinfo where year like '2015' and bResult like '0'
union all
select year, redTopChamp as Personagem from matchinfo where year like '2015' and rResult like '0'
union all
select year, redJungleChamp as Personagem from matchinfo where year like '2015' and rResult like '0'
union all
select year, redMiddleChamp as Personagem from matchinfo where year like '2015' and rResult like '0'
union all
select year, redADCChamp as Personagem from matchinfo where year like '2015' and rResult like '0'
union all
select year, redSupportChamp as Personagem from matchinfo where year like '2015' and rResult like '0'
) as vitoriosos
group by Personagem
order by Perdeu desc
limit 10;

-- Quais os campeõs que mais perderam 2016

select Personagem, count(Personagem) as Perdeu
from (select year, blueTopChamp as Personagem from matchinfo where year like '2016' and bResult like '0'
union all
select year, blueJungleChamp as Personagem from matchinfo where year like '2016' and bResult like '0'
union all
select year, blueMiddleChamp as Personagem from matchinfo where year like '2016' and bResult like '0'
union all
select year, blueADCChamp as Personagem from matchinfo where year like '2016' and bResult like '0'
union all
select year, blueSupportChamp as Personagem from matchinfo where year like '2016' and bResult like '0'
union all
select year, redTopChamp as Personagem from matchinfo where year like '2016' and rResult like '0'
union all
select year, redJungleChamp as Personagem from matchinfo where year like '2016' and rResult like '0'
union all
select year, redMiddleChamp as Personagem from matchinfo where year like '2016' and rResult like '0'
union all
select year, redADCChamp as Personagem from matchinfo where year like '2016' and rResult like '0'
union all
select year, redSupportChamp as Personagem from matchinfo where year like '2016' and rResult like '0'
) as vitoriosos
group by Personagem
order by Perdeu desc
limit 10;

-- Quais os campeõs que mais perderam 2017

select Personagem, count(Personagem) as Perdeu
from (select year, blueTopChamp as Personagem from matchinfo where year like '2017' and bResult like '0'
union all
select year, blueJungleChamp as Personagem from matchinfo where year like '2017' and bResult like '0'
union all
select year, blueMiddleChamp as Personagem from matchinfo where year like '2017' and bResult like '0'
union all
select year, blueADCChamp as Personagem from matchinfo where year like '2017' and bResult like '0'
union all
select year, blueSupportChamp as Personagem from matchinfo where year like '2017' and bResult like '0'
union all
select year, redTopChamp as Personagem from matchinfo where year like '2017' and rResult like '0'
union all
select year, redJungleChamp as Personagem from matchinfo where year like '2017' and rResult like '0'
union all
select year, redMiddleChamp as Personagem from matchinfo where year like '2017' and rResult like '0'
union all
select year, redADCChamp as Personagem from matchinfo where year like '2017' and rResult like '0'
union all
select year, redSupportChamp as Personagem from matchinfo where year like '2017' and rResult like '0'
) as vitoriosos
group by Personagem
order by Perdeu desc
limit 10;