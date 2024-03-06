select
    nev,
    email
from Vendeg
where year(SZUL_DAT) = 1990 and month(SZUL_DAT) > 6
order by month(SZUL_DAT)