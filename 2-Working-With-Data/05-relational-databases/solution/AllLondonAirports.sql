-- SQLite
-- all airports in London, United Kingdom
select name
from Airports a
INNER JOIN Cities c
on a.city_id = c.id
where c.city = 'London' and c.country = 'United Kingdom';