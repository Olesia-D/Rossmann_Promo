-- Search missing values in relevant columns in 'store' table
select COUNT (*) as total_rows,
SUM (case when "CompetitionDistance" is null then 1 else 0 end) as missing_copm_dist,
SUM(CASE WHEN "CompetitionOpenSinceMonth" IS NULL THEN 1 ELSE 0 END) AS missing_competition_month,
SUM(CASE WHEN "CompetitionOpenSinceYear" IS NULL THEN 1 ELSE 0 END) AS missing_competition_year,
SUM(CASE WHEN "Promo2" IS NULL THEN 1 ELSE 0 END) AS missing_promo2,
SUM(CASE WHEN "Promo2SinceWeek" IS NULL THEN 1 ELSE 0 END) AS missing_promo2_week,
    SUM(CASE WHEN "Promo2SinceYear" IS NULL THEN 1 ELSE 0 END) AS missing_promo2_year,
    SUM(CASE WHEN "PromoInterval" IS NULL THEN 1 ELSE 0 END) AS missing_promo_interval
FROM public.store;
	
--Search missing values by store type
SELECT "StoreType", COUNT(*) AS total, SUM(CASE WHEN "CompetitionOpenSinceMonth" IS NULL THEN 1 ELSE 0 END) AS missing_comp, 
SUM(CASE WHEN "Promo2SinceWeek" IS NULL THEN 1 ELSE 0 END) AS missing_promo_week
FROM store
GROUP BY "StoreType";


-- Change datetype column "Date" as date
ALTER TABLE train
ALTER COLUMN "Date" TYPE DATE USING (TO_DATE("Date", 'YYYY/MM/DD'));   

-- Calculation of the difference in store performance with and without promotional activities by day of the week.
WITH promo_stats AS (
    SELECT 
        "DayOfWeek",
        "Promo",
        AVG("Sales") AS avg_sales,
        AVG("Customers") AS avg_customers
    FROM train
    WHERE "Open" = 1
    GROUP BY "DayOfWeek", "Promo"
)
SELECT 
    "DayOfWeek",
    ROUND(MAX(CASE WHEN "Promo" = 0 THEN avg_sales END), 2) AS sales_no_promo,
    ROUND(MAX(CASE WHEN "Promo" = 1 THEN avg_sales END), 2) AS sales_with_promo,
    ROUND(MAX(CASE WHEN "Promo" = 0 THEN avg_customers END), 2) AS customers_no_promo,
    ROUND(MAX(CASE WHEN "Promo" = 1 THEN avg_customers END), 2) AS customers_with_promo,
    ROUND(MAX(CASE WHEN "Promo" = 0 THEN avg_sales END) / NULLIF(MAX(CASE WHEN "Promo" = 0 THEN avg_customers END), 0), 2) AS avg_check_no_promo,
    ROUND(MAX(CASE WHEN "Promo" = 1 THEN avg_sales END) / NULLIF(MAX(CASE WHEN "Promo" = 1 THEN avg_customers END), 0), 2) AS avg_check_with_promo,
    ROUND(
        (MAX(CASE WHEN "Promo" = 1 THEN avg_sales END) - MAX(CASE WHEN "Promo" = 0 THEN avg_sales END)) / 
        NULLIF(MAX(CASE WHEN "Promo" = 0 THEN avg_sales END), 0) * 100,
        2
    ) AS sales_percent_diff
FROM promo_stats
GROUP BY "DayOfWeek"
ORDER BY "DayOfWeek";

--Calcilate sales result with and without promo by store type
WITH store_promo_stats AS (
    SELECT 
        s."StoreType",
        t."Promo",
        AVG(t."Sales") AS avg_sales,
        COUNT(DISTINCT t."Store") AS store_count
    FROM train t
    JOIN store s ON t."Store" = s."Store"
    WHERE t."Open" = 1
    GROUP BY s."StoreType", t."Promo"
)
SELECT 
    "StoreType",
    ROUND(MAX(CASE WHEN "Promo" = 0 THEN avg_sales END), 2) AS sales_no_promo,
    ROUND(MAX(CASE WHEN "Promo" = 1 THEN avg_sales END), 2) AS sales_with_promo,
    ROUND(MAX(CASE WHEN "Promo" = 0 THEN store_count END), 2) AS store_count,
    ROUND(
        (MAX(CASE WHEN "Promo" = 1 THEN avg_sales END) - MAX(CASE WHEN "Promo" = 0 THEN avg_sales END)) / 
        NULLIF(MAX(CASE WHEN "Promo" = 0 THEN avg_sales END), 0) * 100,
        2
    ) AS sales_percent_diff
FROM store_promo_stats
GROUP BY "StoreType"
ORDER BY "StoreType";