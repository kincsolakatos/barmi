select
    case 
        when year(v.SZUL_DAT) >= 1985 then 'fiatal'
        when year(v.SZUL_DAT) < 1970 then 'idos'
        else 'kozepkoru'
    end as 'kategoria',
    count(*) as 'foglalasszam'
from Vendeg v 
    join Foglalas f on v.USERNEV = f.UGYFEL_FK
where f.FELNOTT_SZAM + f.GYERMEK_SZAM >= 2
group by
    case 
        when year(v.SZUL_DAT) >= 1985 then 'fiatal'
        when year(v.SZUL_DAT) < 1970 then 'idos'
        else 'kozepkoru'
    end
    