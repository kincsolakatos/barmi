select
    tk.kat_nev,
    min(LISTAAR) as 'minar',
    avg(LISTAAR) as 'atlagar',
    max(LISTAAR) as 'maxar'
from Termek t join termekkategoria tk on t.KAT_ID = tk.KAT_ID
group by tk.kat_nev
order by avg(LISTAAR) desc