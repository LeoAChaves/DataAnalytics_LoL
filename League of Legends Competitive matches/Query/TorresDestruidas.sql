-- Qual rota teve mais torres destruídas?

select lane, count(type) as torres_destruidas from structures
where lane not like '' and type not like 'NEXUS%'
group by lane;