-- SQLite
-- Count how much has every customer spend on the store
drop view if exists total_invoice;
create view total_invoice as 
select i.InvoiceId, sum(item.UnitPrice*item.Quantity) Total
from invoices i
inner join invoice_items item 
on i.InvoiceId = item.InvoiceId
GROUP by i.InvoiceId;

select * from total_invoice;

/*
SELECT c.FirstName, c.LastName, COUNT(i.InvoiceId) AS InvoiceCount, t.Total
from Customers c
INNER join Invoices i on c.CustomerId = i.CustomerId
inner join total_invoice t on i.InvoiceId = t.InvoiceId
GROUP BY c.CustomerId
ORDER BY InvoiceCount DESC;
*/