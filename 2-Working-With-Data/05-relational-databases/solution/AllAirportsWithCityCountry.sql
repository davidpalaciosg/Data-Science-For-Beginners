-- SQLite
-- all airport names with their city and country

SELECT a.name, c.city, c.country
from airports as a
inner join cities as c
on a.city_id = c.id