# Sales_Data_Analysis
Sales data analysis using SQL to uncover revenue trends, top customers, and product performance.

This project provides an end-to-end analysis of global sales data using MySQL for data extraction and Python (Matplotlib/Pandas) for advanced visualization. The goal was to identify seasonal trends, evaluate product line performance, and assess operational efficiency.

Insights
Peak Seasonality: Analysis identified November as the highest-grossing month, contributing significantly to Q4 revenue.

Product Dominance: Classic Cars represent the largest market share (39.1%), showing a strong correlation between order volume and total revenue.

Operational Health: The business maintains a 92.7% fulfillment rate, though a small percentage of orders are flagged as "Disputed" or "On Hold."

Customer Loyalty: Two major distributors (Euro Shopping Channel and Mini Gifts) drive a disproportionate amount of total order frequency.


Database: MySQL ( Aggregations, Subqueries)
Language: Python 3.14
Libraries: Pandas, Matplotlib, NumPy
Visualization: Multi-color categorical palettes (Optimized for data distinction)


├── data/
│   ├── raw/            # Original source files
│   └── processed/      # Cleaned CSVs used for the final analysis
├── sql/
│   └── queries.sql     # SQL logic used for data extraction and KPIs
├── scripts/            # Python code used to generate project visuals
├── visuals/            # Final exported charts in .png format
└── README.md           # Project documentation and summary

