select 
    szh.SZALLAS_ID,
    szh.SZALLAS_NEV,
    sz.SZALLAS_FK,     
    count(*) as 'klimas'
from Szallashely szh
    join Szoba sz on szh.SZALLAS_ID = sz.SZALLAS_FK
where sz.KLIMAS = 'i'
group by
    szh.SZALLAS_ID,
    szh.SZALLAS_NEV,
    sz.SZALLAS_FK