# Elevete-Labs-Internship

# Task 1- Data Preprocessing - Big Mart Sales Dataset

**Overview**
This project focuses on performing **Exploratory Data Analysis (EDA)** and preprocessing of the Big Mart Sales dataset to prepare it for further analysis or machine learning tasks. The goal was to handle missing values and outliers to ensure data integrity and improve the reliability of future predictions.

**Data Cleaning Steps:**
1. **Handling Missing Values:**
   - **Categorical Column:** Missing values were imputed with the **mode** (most frequent value) to ensure consistency in categorical columns.
   - **Numerical Column:** Missing values were filled with the **mean** of the respective column to ensure no loss of data while maintaining numerical consistency.

2. **Handling Outliers:**
   - **Outliers Detection:** Outliers were identified in the following columns:
     - **Item_Visibility**
     - **Item_Outlet_Sales**
   - **Outlier Handling:** The **Interquartile Range (IQR)** method was used to detect and remove outliers in the numerical columns. Data points that fell outside the range of `Q1 - 1.5 * IQR` and `Q3 + 1.5 * IQR` were treated to ensure the dataset was not distorted by extreme values.

***Data Sources:***
The dataset used in this analysis is **Big Mart Sales Dataset**, which includes details about sales transactions in a big mart across multiple outlets.

**Tools & Libraries Used:**
- **Pandas**: For data manipulation and handling missing values.
- **Numpy**: For numerical operations.
- **Matplotlib/Seaborn**: For visualizing distributions and outliers.



## Task 2: Superstore Data Visualization and Storytelling

**📌 Objective:**
Create impactful visualizations to uncover key insights and tell a compelling data-driven story.

**📊 Tools Used:**
- Power BI / Tableau

**📈 Key Highlights:**
- Analyzed sales, profit, and customer segments across different regions and categories.
- Identified top-performing and underperforming products.
- Visual storytelling to showcase trends, patterns, and business opportunities.

**📁 Deliverables:**
- Visual report (PDF / Dashboard screenshots)
 ![image](https://github.com/user-attachments/assets/17839cee-c2a7-47d9-9872-be7248318adb)
![image](https://github.com/user-attachments/assets/8ed69577-03f4-4c22-bc8e-35f8f8677f3b)
![image](https://github.com/user-attachments/assets/3e238be4-0740-41a4-a280-781be9a32bd1)
![image](https://github.com/user-attachments/assets/d84e6273-e147-4f14-a809-66eec793b480)
![image](https://github.com/user-attachments/assets/18326c8c-b170-49f8-8f63-ad5ebc370cfd)

## ✅ Task 3: SQL for Data Analysis

**Objective:**  
Use SQL queries to extract, manipulate, and analyze structured data from a relational database.

**Tools Used:**  
- MySQL / PostgreSQL / SQLite

**Dataset:**  
- Ecommerce_SQL_Database (or similar)

**Key Concepts Covered:**  
- SQL querying using SELECT, WHERE, ORDER BY, GROUP BY  
- Applying JOINS: INNER, LEFT, RIGHT  
- Writing subqueries  
- Using aggregate functions: SUM, AVG  
- Creating views for reusable analysis  
- Query optimization using indexes
