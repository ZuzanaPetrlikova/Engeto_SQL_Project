/*
  2. Ot�zka
 
	Kolik je mozn� si koupit litr� ml�ka a kilogram� chleba za prvn� a posledn� srovnateln� obdob� v dostupn�ch datech cen a mezd?

 */

WITH avg_values AS (
 	SELECT 
 		year,
 		ROUND(AVG(CASE WHEN year = 2006 AND food_name LIKE '%chl�b%' THEN food_value END), 1) AS avg_bread_price_2006,
	 	ROUND(AVG(CASE WHEN year = 2006 AND food_name LIKE '%ml�ko%'THEN food_value END), 1) AS avg_milk_price_2006,
	 	ROUND(AVG(CASE WHEN year = 2018 AND food_name LIKE '%chl�b%' THEN food_value END), 1) AS avg_bread_price_2018,
	 	ROUND(AVG(CASE WHEN year = 2018 AND food_name LIKE '%ml�ko%' THEN food_value END), 1) AS avg_milk_price_2018,
	 	ROUND(AVG(CASE WHEN year = 2006 THEN salary END), 1) AS avg_salary_2006,
	 	ROUND(AVG(CASE WHEN year = 2018 THEN salary END), 1) AS avg_salary_2018
 	FROM t_zuzana_petrlikova_project_sql_primary_final AS pf
 	WHERE year IN (2006, 2018)
 	GROUP BY YEAR
 )
SELECT DISTINCT
		pf.year,
		COALESCE(salary1.avg_salary_2006, salary2.avg_salary_2018) AS avg_salary,
		'ml�ko' AS product,
    	COALESCE(milk1.avg_milk_price_2006, milk2.avg_milk_price_2018) AS avg_price,
    	ROUND(COALESCE(salary1.avg_salary_2006, salary2.avg_salary_2018) / COALESCE(milk1.avg_milk_price_2006, milk2.avg_milk_price_2018), 1) AS quantity
	FROM t_zuzana_petrlikova_project_sql_primary_final AS pf
	LEFT JOIN avg_values AS salary1 ON pf.year = salary1.year AND salary1.year = 2006
	LEFT JOIN avg_values AS salary2 ON pf.year = salary2.year AND salary2.year = 2018
	LEFT JOIN avg_values AS milk1 ON pf.year = milk1.year AND milk1.year = 2006 AND pf.food_name LIKE '%ml�ko%'
	LEFT JOIN avg_values AS milk2 ON pf.year = milk2.year AND milk2.year = 2018 AND pf.food_name LIKE'%ml�ko%'
	WHERE pf.year IN (2006, 2018) AND pf.food_name LIKE '%ml�ko%'
UNION
SELECT DISTINCT 
		pf.year,
		COALESCE(salary1.avg_salary_2006, salary2.avg_salary_2018) AS avg_salary,
		'chl�b' AS product,
		COALESCE(bread1.avg_bread_price_2006, bread2.avg_bread_price_2018) AS avg_price,
		ROUND(COALESCE(salary1.avg_salary_2006, salary2.avg_salary_2018) / COALESCE(bread1.avg_bread_price_2006, bread2.avg_bread_price_2018), 1) AS quantity
	FROM t_zuzana_petrlikova_project_sql_primary_final AS pf
	LEFT JOIN avg_values AS salary1 ON pf.YEAR = salary1.YEAR AND salary1.year = 2006	
	LEFT JOIN avg_values AS salary2 ON pf.YEAR = salary2.YEAR AND salary2.year = 2018
	LEFT JOIN avg_values AS bread1 ON pf.YEAR = bread1.YEAR AND bread1.YEAR = 2006 AND pf.food_name LIKE '%chl�b%'
	LEFT JOIN avg_values AS bread2 ON pf.YEAR = bread2.YEAR AND bread2.YEAR = 2018 AND pf.food_name LIKE '%chl�b%'
	WHERE pf.year IN (2006, 2018) AND pf.food_name LIKE '%chl�b%'
	ORDER BY year
;


/*
  Odpoved
  
	V roce 2006 bylo mozn� si za prumernou mzdu koupit 1511,8 litr� ml�ka a 1322,8 kilogram� chleba.
	V roce 2018 bylo mozn� si za prumrrnou mzdu koupit 1654,6 litr� ml�ka a 1378,8 kilogram� chleba.


 */
