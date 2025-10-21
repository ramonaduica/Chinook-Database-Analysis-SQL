# SQL Data Analysis Project: Chinook Database

This project demonstrates strong SQL data analysis skills using the **Chinook sample database**. Chinook models a digital music store, providing data on customers, invoices, artists, albums, tracks, and genres, making it an excellent dataset for business analysis.

The primary goal of this project is to **extract meaningful business insights** from the data through a series of complex SQL queries, showcasing proficiency in data aggregation, joins, grouping, and reporting.

---

### 🧰 Tools & Technologies

| Category | Tool/Technology | Role in Project |
| :--- | :--- | :--- |
| **Database** | MySQL (via XAMPP) | The relational database system hosting the Chinook schema. |
| **Client/IDE** | HeidiSQL (or similar) | Used to write, execute, and review the SQL queries. |
| **Dataset** | Chinook | The open-source sample database used for the analysis. |
| **Language** | SQL (Standard Query Language) | The core language used for all data querying and manipulation. |

---

### 🧮 Project Objectives & Analytical Focus

The analysis is structured to answer key business questions across the sales, customer, and catalog domains:

* **Customer Behavior:** Understanding customer distribution and identifying top spending patterns.
* **Sales Performance:** Measuring revenue trends and identifying top-performing countries.
* **Catalog Insights:** Analyzing genre popularity and identifying top artists by volume.
* **Technical Proficiency:** Demonstrating mastery of aggregation (`SUM`, `COUNT`, `AVG`), multi-table `JOIN`s, `GROUP BY`, and data formatting (`ROUND`, `DATE_FORMAT`).

---

### 🧠 Summary Insights

| Analysis Area | Key Finding |
| :--- | :--- |
| **Top Revenue Countries** | **USA, Canada, and France** are the top three leaders in total revenue generation. |
| **Top-Selling Genre** | **Rock** and **Alternative** dominate both total sales and track volume across the store. |
| **Top Customers** | The top 10 customers show consistent high spending, each spending approximately **$40–$50**. |
| **Sales Trend** | Monthly sales revenue remains **consistent** throughout the year with only minor seasonal fluctuation. |
| **Average Order Value** | The average invoice value across all sales is consistently around **$6 per invoice**. |

---

### 💻 Key Queries Included

The full SQL script is located in the [`project_queries.sql`](./project_queries.sql) file. Below are the key questions addressed by the analysis:

1.  **Customer Exploration:** Display first 10 customers.
2.  **Customer Distribution:** Count customers per country.
3.  **Sales Performance:** Identify top countries by total revenue.
4.  **Customer Spending:** Find top 10 customers by total spending.
5.  **Catalog Detail:** List longest tracks (over 5 minutes).
6.  **Genre Popularity:** Count tracks per genre.
7.  **Artist Contribution:** Find top artists by number of tracks.
8.  **Order Metrics:** Calculate average invoice value per country.
9.  **Business Trends (Bonus):** Monthly revenue trend analysis.
10. **Product Performance (Bonus):** Determine top-selling genre by total revenue.

---

### 🚀 How to Run the Project

To replicate this analysis, follow these steps:

1.  **Install & Start Server:** Install **XAMPP** (or a similar stack) and ensure the **MySQL server** is running.
2.  **Connect:** Use a database client like **HeidiSQL** to connect to your local MySQL instance (`localhost`).
3.  **Load Database:** Execute the Chinook schema file (e.g., `Chinook_MySql.sql`) to create the database structure and populate the tables with data.
4.  **Run Queries:** Open and run the queries found in the **`project_queries.sql`** file.
5.  **Review:** Examine the output to confirm the insights outlined in this README.

---

## 🙋 Contact
* **Your Name:** [Ramona Duica]
* **GitHub:** [https://github.com/ramonaduica]
* **LinkedIn:** [https://www.linkedin.com/in/ramonaduica]
