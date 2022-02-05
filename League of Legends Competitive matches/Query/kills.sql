select * from kills;

-- Os jogadores que mais efetuaram abates SOLO

select killer, count(Killer) as Solou from kills
where Assist_1 like '' and killer not like '' and victim not like ''
group by killer
order by Solou desc
limit 10;

-- Os jogadores que mais foram abatidos SOLO

select victim, count(victim) as Solado from kills
where Assist_1 like '' and killer not like '' and victim not like ''
group by victim
order by Solado desc
limit 10;

-- Os firstblood's SOLO mais rapidos

select killer, victim, time from kills
where killer not like 'TooEarly' and killer not like '' and time not like '' and Assist_1 like ''
order by time asc
limit 10;

-- Os firstblood's mais rápidas

select killer, victim, Assist_1, Assist_2, Assist_3, Assist_4, time from kills
where killer not like 'TooEarly' and killer not like '' and time not like ''
order by time asc
limit 10;

-- Os jogadores que mais tiveram abates

select killer, count(killer) as abates from kills
group by Killer
order by count(killer) desc
limit 10;

-- Os jogadores que mais foram abatidos

select victim, count(victim) as abatido from kills
group by victim
order by abatido desc
limit 10;