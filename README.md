# 📊 Restaurant Operations System (ROS) Power BI Dashboard

Welcome to the **Restaurant Operations System (ROS)** Analytics and Business Intelligence Dashboard project. This project transforms raw operational data from a normalized relational database into interactive, actionable business insights.

It is designed to serve as a recruiter-ready, professional demonstration of modern data modeling, ETL, and data visualization best practices.

---

## 🔍 Project Overview

The core objective of this project is to build an executive-ready dashboard that tracks and analyzes the operations, sales, subscriptions, and financial health of various restaurants across multiple countries. The source dataset is backed by a fully normalized database containing 15 relational tables.

### 🗄️ Database Schema & Data Model
The analytics model is designed to work with data spanning:
- **Core Entities:** `Clients`, `Subscriptions`, `Restaurants`, `Users`, `Roles`, `Departments`
- **Transactional Records:** `Orders`, `Sales`, `Expenses`, `Deliveries`, `Cash_Up`, `Banking`
- **Metadata/Lookup Tables:** `Countries`, `Currencies`, `TaxInfo`

---

## 📈 Key Performance Indicators (KPIs) Tracked

Following the **SMART** planning framework, the dashboard visualizes and tracks progress against **five core business objectives**:

| # | KPI Objective | Measurement / Visual Approach |
|---|---|---|
| **1** | **Increase Profit by 15%** (Next 2 Quarters) | Track monthly overall profit trend line vs. target profit goals. |
| **2** | **0% Error Rate in Accounting** | Reconciliation tracking between `Cash_Up` entries and actual `Banking` receipts. |
| **3** | **Increase Takeaway Profitability by 10%** (Next 2 Quarters) | Compare delivery/takeaway channels (`Deliveries`) vs. dine-in profitability. |
| **4** | **Acquire 5 New Clients** (Next 3 Months) | Visual tracking of client subscription activation rates (`Clients` & `Subscriptions`). |
| **5** | **Reduce Cash-up to Banking Turnaround Time** | Ageing analysis of time delay between cash registry closing and bank deposit. |

---

## 🚀 Key Dashboard Features

* **Cross-Filtering & Drill-Downs:** Easily analyze metrics by **Country**, **Individual Restaurant**, and **Month/Quarter**.
* **Financial Reconciliation View:** Dedicated view to trace anomalies and match POS cash outs to physical bank deposits.
* **Subscription & Billing Insights:** Analyze subscription tiers, client statuses, and monthly recurring revenue (MRR) contributions.
* **Dine-in vs. Delivery Analysis:** Comparative analysis of order types to optimize delivery partner margins and takeaway profitability.

---

## 🛠️ Tech Stack & Tools

* **Business Intelligence / Reporting:** Power BI Desktop (`.pbix` file format)
* **Data Sources:** MySQL / PostgreSQL relational databases (see DDL scripts in the parent project)
* **Modeling & Language:** DAX (Data Analysis Expressions) for calculated measures and columns

---

## 📁 Repository Structure

```text
PowerBI_Project/
├── database/         # MySQL & PostgreSQL DDL schemas & load scripts
├── dataset/          # Raw dataset files (Excel sheets, Data Dictionary & reports)
│   └── csv/          # Cleaned CSV files for each database table (Orders, Sales, etc.)
├── 19_June.pbix      # Main Power BI Report file containing the visual dashboard
└── README.md         # Project documentation (this file)
```

---

## 💻 How to View the Dashboard

1. **Prerequisites:** Make sure you have [Power BI Desktop](https://powerbi.microsoft.com/desktop/) installed.
2. **Download:** Clone this repository or download the [`19_June.pbix`](./19_June.pbix) file directly.
3. **Open:** Launch Power BI Desktop and open the file.
4. **Data Connection:** If the data model requires refreshing, ensure access credentials are set up for your source relational database containing the ROS schema.

---

> [!NOTE]  
> This project was developed as part of the TalenciaGlobal Analytics and Business Intelligence milestone track.