# Rossmann Sales Descriptive Analysis

## Overview
This project analyzes sales data from the Rossmann dataset to understand the impact of promotions on revenue across different store types and days of the week. The dataset includes sales records (`train`) and store metadata (`store`), which are cleaned, merged, and explored through SQL and Python.

The project was developed as part of a portfolio to demonstrate skills in SQL, Python (pandas, seaborn, matplotlib), data cleaning, and data visualization.

## Project Goals
The main objectives of this project are:  
1. **Determine whether investing in promotional campaigns is worthwhile** by analyzing their impact on sales.  
2. **Identify which day of the week or store type benefits most from promotions** in terms of average sales per customer (average check).  
3. **Demonstrate the ability to analyze data and draw actionable insights** that can benefit retail businesses.

## Dataset
The analysis is based on the Rossmann Store Sales dataset:
https://files.fast.ai/part2/lesson14/rossmann.tgz

## Objectives
- Clean and preprocess the dataset using SQL.
- Analyze the relationship between promotions, store types, days of the week, and sales.
- Visualize key insights to uncover trends and patterns.

## Repository Structure
- **`rossmann-data-prepare.sql`**: SQL script for data cleaning, merging tables, and initial analysis (e.g., sales by promo, store type, and day of week).
- **`Rossmann Promo data.ipynb`**: Jupyter Notebook with visualizations of sales trends.
- **`%_sales_promo.png`**: Visualization of how higher sales with promo then without it by day of week (percent).
- **`%sales_storetype.png`**: Visualization of how higher sales with promo by store type (percent).
- **`average_check_by_dow.png`**: Visualization of average check with and without promo by day of week.
- **`average_sales_by_dow.png`**: Visualization of average sum of sales with and without promo by day of week.
- **`average_sales_by_storetype.png`**: Visualization of average sales with and without promo by store type
- **`average_sales_promo.png`**: Visualization of sum of average sales with and without promo 

## Methodology
1. **Data Cleaning (SQL)**:
   - Handled missing values in `CompetitionDistance`.
   - Merged `train` and `store` tables into `rossmann_combined`.
   - Calculated average sales, customers, and check by promo, store type, and day of week.

2. **Exploratory Data Analysis (Python)**:
   - Visualized average sales with/without promotions.
   - Analyzed sales by day of week and store type.
   - Explored the effect of promotions across different store types.

## Key Findings
**Overall Conclusion:** Promotions are most effective on Mondays (+56%) and in type A stores (+45%). 
        They not only attract more customers but also increase the average check (e.g., from 8.86 to 11.03 on Mondays).  

**Business Perspective (Is it worth investing in promotions?):**  
        Promotions are effective: they boost sales by 28–56% across days and by 18–45% across store types.  
        The average check increases with promotions, meaning they not only draw more customers but also raise spending per customer. This is a positive signal for the business.  
        However, in type B stores, the effect is smaller (+18%), so it’s worth checking if the promotions justify the costs in these locations.  

**Optimization (When/Where to run promotions?):**  
        **When:** The best days for promotions are Monday (+56%) and Tuesday (+52%), where the impact is strongest. 
          On Thursday and Friday, the effect is lower (28–30%), so promotions could be less frequent there.  
        **Where:** Focus on type A stores (+45%), where the effect is most significant. 
          For type B stores, it’s worth testing alternative strategies, as standard promotions are less effective.

## Tools Used
- **SQL**: Data cleaning and initial analysis, data manipulation (DBeaver).
- **Python**: pandas (data manipulation), seaborn/matplotlib (visualization).
- **GitHub**: Project hosting.

## How to Run
1. Clone the repository: `git clone https://github.com/Olesia-D/Rossmann-Sales-Analysis.git`
2. Run `rossmann-data-prepare.sql` in a SQL environment (e.g., DBeaver) to preprocess the data.
3. Open `Rossmann Promo data.ipynb` in Jupyter Notebook to explore visualizations.

## Future Improvements
- Extend the analysis to include predictive modeling after learning machine learning techniques.
- Explore customer behavior trends in more detail.

## Contact
For questions or feedback, reach out via (https://www.linkedin.com/in/olesia-zahudaieva-a950b82a0/)
