# 🎸 Chinook Database Analysis: SQL Queries

## 📊 Overview
This repository contains a collection of **10 analytical SQL queries** written for the popular **Chinook Sample Database**.

The Chinook database models a digital media store, including tables for artists, albums, tracks, employees, customers, and invoices. This project demonstrates proficiency in SQL querying, focusing on joins, aggregation, grouping, and ordering to derive valuable business intelligence insights in the areas of **Sales Performance**, **Customer Behavior**, and **Music Catalog Analysis**.

---

## 🛠️ Technology Used

* **Database:** Chinook (SQLite, MySQL, or PostgreSQL compatible schema)
* **Language:** SQL (Standard Query Language)

---

## 🔍 Key Insights & Summary

| Analysis Area | Key Finding |
| :--- | :--- |
| **Top Revenue Countries** | USA, Canada, and France generate the highest total revenue. |
| **Top-Selling Genre** | Rock is the top-selling genre by total revenue. |
| **Customer Spending** | The top 10 customers each spent a relatively consistent amount, ranging between **$40 and $50**. |
| **Average Order Value** | The average invoice value is consistently around **$5–$7** across different countries. |
| **Monthly Trend** | Revenue is steady month-to-month with only minor seasonal variations. |
| **Popular Genres** | Rock, Latin, and Metal are the most popular genres by track count. |

---

## 💻 SQL Queries

The complete list of queries is contained in the file `chinook_analysis.sql`. Below is a summary and preview of the questions answered:

### 1. Customer Overview
* Display first 10 customers.
* *Preview:* `SELECT FirstName, LastName, Country, Email FROM customer LIMIT 10;`

### 2. Number of Customers per Country
* Counts the total number of customers residing in each country.
* *Preview:* `SELECT Country, COUNT(*) AS TotalCustomers FROM customer GROUP BY Country;`

### 3. Top 5 Countries by Total Revenue
* Calculates the total sales amount for each billing country and ranks them.
* *Preview:* `SELECT BillingCountry, SUM(total) AS TotalSales FROM invoice GROUP BY BillingCountry ORDER BY TotalSales DESC LIMIT 5;`

### 4. Top 10 Customers by Total Spending
* Identifies the customers who have spent the most money in total.
* *Preview:* `SELECT c.FirstName, c.LastName, SUM(i.total) AS TotalSpent FROM customer c JOIN invoice i ON c.CustomerId = i.CustomerId GROUP BY c.CustomerId ORDER BY TotalSpent DESC LIMIT 10;`

### 5. Longest Tracks (Over 5 Minutes)
* Lists tracks that are longer than 5 minutes (300,000 milliseconds).
* *Preview:* `SELECT Name AS Track, ROUND(Milliseconds/60000.0, 2) AS Minutes FROM track WHERE Milliseconds > 300000;`

### 6. Number of Tracks per Genre
* Aggregates and counts the total number of tracks available in each music genre.
* *Preview:* `SELECT g.Name AS Genre, COUNT(t.TrackId) AS TrackCount FROM genre g JOIN track t ON g.GenreId = t.GenreId GROUP BY g.Name;`

### 7. Top 5 Artists by Number of Tracks
* Identifies the artists with the greatest number of songs in the catalog.
* *Preview:* `SELECT a.Name AS Artist, COUNT(t.TrackId) AS TotalTracks FROM artist a JOIN album al ON al.ArtistId = a.ArtistId GROUP BY a.Name ORDER BY TotalTracks DESC LIMIT 5;`

### 8. Average Invoice Value per Country
* Calculates the mean value of an invoice in each country.
* *Preview:* `SELECT BillingCountry, ROUND(AVG(Total), 2) AS AvgInvoice FROM invoice GROUP BY BillingCountry;`

### 9. Monthly Revenue Trend (Bonus)
* Calculates the total sales revenue grouped by year and month to track trends.
* *Preview:* `SELECT DATE_FORMAT(InvoiceDate, '%Y-%m') AS Month, ROUND(SUM(Total), 2) AS MonthlySales FROM invoice GROUP BY Month ORDER BY Month;`

### 10. Top-Selling Genre by Total Revenue (Bonus)
* Determines which music genre generates the highest overall sales.
* *Preview:* `SELECT g.name AS Genre, ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS TotalSales FROM invoiceline il JOIN track t ON il.TrackId = t.TrackId GROUP BY g.name ORDER BY TotalSales DESC LIMIT 1;`

---

## 📁 Repository Structure

Chinook-Database-Analysis-SQL/ ├── chinook_analysis.sql └── README.md


---

## 🙋 Contact
* **Your Name:** [Ramona Duica]
* **GitHub:** [https://github.com/ramonaduica]
* **LinkedIn:** [https://www.linkedin.com/in/ramonaduica]
