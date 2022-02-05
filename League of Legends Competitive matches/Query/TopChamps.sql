-- Qual o top 5 dos personagens utilizado em cada posição?

select blueTopChamp, count(blueTopChamp) as BlueTop_Favorito
from matchinfo
group by blueTopChamp
order by BlueTop_Favorito DESC 
limit 5;

select redTopChamp, count(redTopChamp) as RedTop_Favorito
from matchinfo
group by redTopChamp
order by RedTop_Favorito DESC 
limit 5;

select blueJungleChamp, count(blueJungleChamp) as BlueJungle_Favorito
from matchinfo
group by blueJungleChamp
order by BlueJungle_Favorito DESC 
limit 5;

select redJungleChamp, count(redJungleChamp) as RedJungle_Favorito
from matchinfo
group by redJungleChamp
order by RedJungle_Favorito DESC 
limit 5;

select blueMiddleChamp, count(blueMiddleChamp) as BlueMiddle_Favorito
from matchinfo
group by blueMiddleChamp
order by BlueMiddle_Favorito DESC 
limit 5;

select redMiddleChamp, count(redMiddleChamp) as RedMiddle_Favorito
from matchinfo
group by redMiddleChamp
order by RedMiddle_Favorito DESC 
limit 5;

select blueADCChamp, count(blueADCChamp) as BlueADC_Favorito
from matchinfo
group by blueADCChamp
order by BlueADC_Favorito DESC 
limit 5;

select redADCChamp, count(redADCChamp) as RedADC_Favorito
from matchinfo
group by redADCChamp
order by RedADC_Favorito DESC 
limit 5;

select blueSupportChamp, count(blueSupportChamp) as BlueSupport_Favorito
from matchinfo
group by blueSupportChamp
order by BlueSupport_Favorito DESC 
limit 5;

select redSupportChamp, count(redSupportChamp) as RedSupport_Favorito
from matchinfo
group by redSupportChamp
order by RedSupport_Favorito DESC 
limit 5;