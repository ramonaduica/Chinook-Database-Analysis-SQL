-- =============================================================
-- 1. Display first 10 customers
-- =============================================================

-- Show first 10 customers (all columns)
SELECT * 
FROM customer 
LIMIT 10;

-- Show only key columns for readability
SELECT FirstName, LastName, Country, Email 
FROM customer
LIMIT 10;

-- =============================================================
-- 2. Number of customers per country
-- =============================================================
SELECT Country, COUNT(*) AS TotalCustomers 
FROM customer
GROUP BY Country;

-- =============================================================
-- 3. Top 5 countries by total revenue
-- =============================================================
SELECT BillingCountry, sum(total) AS TotalSales
FROM invoice
GROUP BY BillingCountry
ORDER BY TotalSales DESC
LIMIT 5;

-- =============================================================
-- 4. Top 10 customers by total spending
-- =============================================================
SELECT c.FirstName, c.LastName, SUM(i.total) AS TotalSpent
FROM customer c
JOIN invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY TotalSpent DESC
LIMIT 10;


-- =============================================================
-- 5. Longest tracks (over 5 minutes)
-- =============================================================
SELECT Name AS Track,
       ROUND(Milliseconds/60000.0, 2) AS Minutes
FROM track
WHERE Milliseconds > 300000
ORDER BY Minutes DESC
LIMIT 10;


-- =============================================================
-- 6. Number of tracks per genre
-- =============================================================
SELECT g.Name AS Genre, COUNT(t.TrackId) AS TrackCount
FROM genre g
JOIN track t ON g.GenreId = t.GenreId
GROUP BY g.Name
ORDER BY TrackCount DESC;


-- =============================================================
-- 7. Top 5 artists by number of tracks
-- =============================================================
SELECT a.Name AS Artist, COUNT(t.TrackId) AS TotalTracks
FROM artist a
JOIN album al ON al.ArtistId = a.ArtistId
JOIN track t ON t.AlbumId = al.AlbumId
GROUP BY a.Name
ORDER BY TotalTracks DESC
LIMIT 5;


-- =============================================================
-- 8. Average invoice value per country
-- =============================================================
SELECT BillingCountry, ROUND(AVG(Total), 2) AS AvgInvoice
FROM invoice
GROUP BY BillingCountry
ORDER BY avgInvoice DESC;


-- =============================================================
-- 9. Monthly revenue trend (bonus query)
-- =============================================================
SELECT DATE_FORMAT(InvoiceDate, '%Y-%m') AS Month,
       ROUND(SUM(Total), 2) AS MonthlySales
FROM invoice
GROUP BY Month
ORDER BY Month;


-- =============================================================
-- 10. Top-selling genre by total revenue (bonus query)
-- =============================================================
SELECT g.name AS Genre, ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS TotalSales
FROM invoiceline il 
JOIN track t ON il.TrackId = t.TrackId
JOIN genre g ON g.GenreId = t.GenreId
GROUP BY g.name
ORDER BY TotalSales DESC
LIMIT 1;


/*
=============================================================
 SUMMARY INSIGHTS
 -------------------------------------------------------------
 - USA, Canada, and France generate the highest total revenue.
 - Rock, Latin and Metal are the most popular genres.
 - The top 10 customers each spent between $40–$50.
 - Average invoice value ranges around $5–$7, depending on country.
 - Revenue is steady month-to-month with minor seasonal variations.
 - Rock genre produces the highest overall sales.
=============================================================
*/