# ☕ Coffee Sales Performance Analysis  
📊 **SQL & Power BI Project**  

## 📌 Project Overview  
This project analyzes **coffee sales data** from multiple stores over a **6-month period (January - June)**. The goal is to **extract meaningful business insights** using:  
- **SQL** for data extraction, cleaning, and transformation  
- **Power BI** for interactive data visualization  

## 🎯 Objectives  
- 🛠 **Data Extraction & Transformation**: Query and clean the sales dataset using SQL.  
- 📊 **Sales Performance Analysis**: Identify trends in revenue, best-selling products, and store performance.  
- 🔎 **Data Visualization**: Build an interactive **Power BI dashboard** for business decision-making.  

---

## 📂 Dataset Overview  
The dataset contains **sales transaction records** across multiple stores. The key fields include:  
- **transaction_time** – Date & time of purchase  
- **transaction_qty** – Quantity sold  
- **store_id** – Unique identifier for stores  
- **store_location** – Store’s geographical location  
- **product_id** – Unique product identifier  
- **unit_price** – Selling price per unit  
- **product_category** – General category of the product  
- **product_type** – Specific type of product  
- **product_detail** – Additional product description  

---

## 🛠 SQL Analysis & Findings  

### 1️⃣ 📅 Monthly Revenue Trend
Insight:
Sales fluctuated over the six-month period (January to June).
May and June saw the highest revenue, indicating strong sales performance towards the end of the period.
🔍 Possible Reason:
Increased marketing efforts, seasonal demand, or store promotions in May and June.
### 2️⃣ 🏪 Best & Worst Performing Stores
Insight:
The three stores generated similar revenue:
Store A: $236,511.17
Store B: $232,243.91
Store C: $230,057.25
🔍 Possible Reason:
Evenly distributed customer traffic across stores.
Similar inventory and pricing strategy across locations.

### 3️⃣ 📦 Best-Selling & Least-Selling Products
Insight:
Top 3 best-selling products had quantities of 26,250, 25,973, and 25,943 units sold.
Least 3 selling products had quantities of only 134, 159, and 183 units.
🔍 Possible Reason:

High-performing products are likely popular items with strong demand.
Low-performing products might suffer from poor marketing, high prices, or lack of availability.
4️⃣ Price Distribution Across Products
💰 Insight:

Product prices range from $0.80 to $45.00.
Highest sales volume is for products priced at $3.00 and $2.50.
Lowest sales volume is for products priced at $5.63 and $23.00.
🔍 Possible Reason:

Customers prefer affordable and mid-range products, while expensive products have lower demand.
5️⃣ Peak Sales Hours
⏰ Insight:

Sales peak between 8 AM and 10 AM, indicating the morning rush is the busiest period.
Sales drop significantly after 7 PM, with the lowest sales recorded at 6 AM and 8 PM.
🔍 Possible Reason:

Morning hours are key for coffee sales as customers grab drinks before work.
Evening hours see lower sales as coffee demand decreases later in the day.
