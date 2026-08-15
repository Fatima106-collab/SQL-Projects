 # Customer Transactions & Satisfaction Analysis Using SQL

## Project Overview

This project focuses on analyzing customer transaction and satisfaction data using **SQL**.

The main goal is to explore customer behavior, transaction patterns, payment methods, geographic activity, and satisfaction levels, then extract meaningful insights that can support data-driven business decisions.

---

##  Project Objectives

* Analyze customer transaction behavior.
* Identify preferred payment methods by country.
* Find cities with the highest transaction activity.
* Identify the top customers based on transaction rate.
* Calculate average customer ratings by country.
* Analyze customer satisfaction distribution.
* Identify the cities with the highest and lowest satisfaction levels.

---

##  Tools & Technologies

* **SQL**
* **SQL Server**
* **SQL Server Management Studio (SSMS)**

---

##  Analysis Performed

### 1. Data Exploration

Explored the customer dataset to understand its structure and identify unique values for:

* Countries
* Cities
* Payment/Transfer Methods

Used SQL functions such as `DISTINCT` and `COALESCE()` for data exploration and NULL handling.

### 2. Data Cleaning

Standardized customer first names by converting them to uppercase using the `UPPER()` function.

### 3. Preferred Payment Methods by Country

Analyzed transaction methods across different countries and calculated their usage frequency.

This helps identify the most commonly used payment methods in each country.

### 4. Top 10 Customers by Transaction Rate

Identified the top 10 customers based on their transaction rate.

### 5. Most Popular Cities for Transactions

Calculated the number of transactions per city to identify cities with the highest transaction activity.

### 6. Average Rating by Country

Calculated the average customer rating for each country to compare satisfaction levels across different markets.

### 7. Customer Satisfaction Distribution

Grouped customer ratings into the following ranges:

| Rating Range | Description |
| ------------ | ----------- |
| 1–2          | Very Low    |
| 3–4          | Low         |
| 5–6          | Moderate    |
| 7–8          | High        |
| 9–10         | Very High   |

This provides a clearer understanding of the overall customer satisfaction distribution.

### 8. Top & Bottom Cities by Satisfaction

Identified:

* **Top 10 cities** with the highest average customer ratings.
* **Bottom 10 cities** with the lowest average customer ratings.

This can help identify strong-performing markets and areas that may require improvement.

---

## 📊 SQL Concepts Used

This project demonstrates practical usage of:

* `SELECT`
* `DISTINCT`
* `TOP`
* `GROUP BY`
* `ORDER BY`
* `COUNT()`
* `AVG()`
* `COALESCE()`
* `UPPER()`
* `CASE WHEN`
* Aggregate Functions
* Data Grouping
* Data Sorting
* Data Analysis

---

## 💡 Business Insights

The analysis provides insights into:

* Customer transaction behavior.
* Payment method preferences.
* Geographic transaction patterns.
* Customer satisfaction levels.
* High-performing and low-performing cities.
* Differences in customer satisfaction across countries.

These insights can support business decisions related to **customer experience, payment strategies, market targeting, and customer engagement**.



