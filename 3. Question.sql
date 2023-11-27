/*
  3. Ot�zka
 
	Kter� kategorie potravin zdra�uje nejpomaleji - je u n� nejni��� percentu�ln� meziro�n� n�r�st?

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
  Odpov��
  
	Nejni��� procentu�ln� n�r�st byl zaznamen�n v roce 2007 u potraviny: Rajsk� jablka �erven� kulat�. Cena poklesla o 31.03%.

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
  Odpov��
  
	Mezi lety 2006 a 2018 nejpomaleji zdra�uje: cukr krystalov�(212,101), u n�ho� do�lo ke sn�en� ceny o 27.27%.
	
 */

