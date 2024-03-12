select
    r.RAKTAR_NEV,
    count(*) as 'termefajta',
    sum(KESZLET) as 'termekosszeg'
from Termek t join Raktar r on t.RAKTAR_KOD = r.RAKTAR_KOD
where t.Leiras is null
group by r.RAKTAR_NEV