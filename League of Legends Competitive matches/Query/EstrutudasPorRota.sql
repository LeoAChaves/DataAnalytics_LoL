-- Estruturas derrubadas na rota do MID

select lane, type, count(Type) derrubadas from structures
where lane like 'MID%'
group by type
order by derrubadas desc;

-- Estruturas derrubadas na rota do TOP

select lane, type, count(Type) derrubadas from structures
where lane like 'TOP%'
group by type
order by derrubadas desc;

-- Estruturas derrubadas na rota do BOT

select lane, type, count(Type) derrubadas from structures
where lane like 'BOT%' and type not like 'fountain%'
group by type 
order by derrubadas desc;