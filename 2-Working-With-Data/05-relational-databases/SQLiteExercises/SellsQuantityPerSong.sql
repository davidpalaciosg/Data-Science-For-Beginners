-- SQLite
-- Sell's quantity of each song
SELECT t.name, sum(i.Quantity) as quantity
from tracks as t
inner join invoice_items as i
on i.TrackId = t.TrackId 
group by t.name
order by quantity desc, t.name