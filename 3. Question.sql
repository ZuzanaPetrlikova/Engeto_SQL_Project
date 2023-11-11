/*
  3. Ot�zka
 
	Kter� kategorie potravin zdra�uje nejpomaleji - je u n� nejni��� percentu�ln� meziro�n� n�r�st?

 */

SELECT DISTINCT  
		pf.food_name,
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
  
	Nejni��� procentu�ln� n�r�st byl zaznamen�n v roce 2007 potraviny: Rajsk� jablka �erven� kulat�. 
  	Cena poklesla o 31.03%.

 */