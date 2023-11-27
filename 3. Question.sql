/*
  3. Otázka
 
	Která kategorie potravin zdražuje nejpomaleji - je u ní nejnižší percentuální meziroèní nárùst?

 */

SELECT DISTINCT  
		pf.food_name,
		pf.food_category_code,
		pf.year,
		subquery.year + 1 AS next_year,
		round( ( pf.food_value - subquery.food_value ) / subquery.food_value * 100, 2 ) as percentage_food_value_growth
FROM t_zuzana_petrlikova_project_sql_primary_final AS pf
JOIN t_zuzana_petrlikova_project_sql_primary_final AS subquery
	ON pf.food_name = subquery.food_name
	AND pf.YEAR = subquery.year + 1
ORDER BY percentage_food_value_growth ASC; 

/*
  Odpovìï
  
	Nejnižší procentuální nárùst byl zaznamenán v roce 2007 u potraviny: Rajská jablka èervená kulatá. Cena poklesla o 31.03%.

 */


 -- Mezi lety 2006-2018

SELECT
    food_category_code,
    food_name,
    AVG(CASE WHEN year = 2006 THEN food_value END) AS avg_food_value_2006,
    AVG(CASE WHEN year = 2018 THEN food_value END) AS avg_food_value_2018,
    ROUND(((AVG(CASE WHEN year = 2018 THEN food_value END) - AVG(CASE WHEN year = 2006 THEN food_value END)) / AVG(CASE WHEN year = 2006 THEN food_value END)) * 100, 2) AS percentage_change
FROM t_zuzana_petrlikova_project_sql_primary_final
WHERE year BETWEEN 2006 AND 2018
GROUP BY food_category_code, food_name
ORDER BY percentage_change;

/*
  Odpovìï
  
	Mezi lety 2006 a 2018 nejpomaleji zdražuje: cukr krystalový(212,101), u nìhož došlo ke snížení ceny o 27.27%.
	
 */

