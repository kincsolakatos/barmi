select
    felvitte,
    count(*) as 'munka',
    min(FELVITEL) as 'munkakezdete',
    max(FELVITEL) as 'munkavege'
from termek
group by felvitte