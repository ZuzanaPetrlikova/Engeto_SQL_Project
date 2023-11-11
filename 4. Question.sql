/*
  4. Otázka
 	
	Existuje rok, ve kterém byl meziroèní nárùst cen potravin výraznì vyšší než nárùst mezd (vìtší než 10 %)?

 */


SELECT DISTINCT
    subquery.year,
    ROUND((subquery.avg_food_value - subquery2.avg_food_value) / subquery2.avg_food_value * 100, 2) AS per_value__growth,
    ROUND((subquery.avg_salary - subquery2.avg_salary) / subquery2.avg_salary * 100, 2) AS per_salary__growth,
    ROUND(((subquery.avg_food_value - subquery2.avg_food_value) / subquery2.avg_food_value * 100) - ((subquery.avg_salary- subquery2.avg_salary) / subquery2.avg_salary * 100), 2) AS difference_percentage
FROM (
    	SELECT 
	        year,
	        AVG(food_value) AS avg_food_value,
	        AVG(salary) AS avg_salary
    	FROM t_zuzana_petrlikova_project_sql_primary_final AS pf
    	GROUP BY year
	 ) AS subquery
JOIN (
		SELECT 
			 year,
			 AVG(food_value) AS avg_food_value,
			 AVG(salary) AS avg_salary
		FROM t_zuzana_petrlikova_project_sql_primary_final AS pf
		GROUP BY year
	 ) AS subquery2
ON subquery.year = subquery2.year + 1
ORDER BY difference_percentage DESC;


/*
  Odpovìï

	V žádném roce není mezironèí percentuální nárùst cen potravin vyšší o více než 10 % oproti nárùstu mezd. 
	Nejvyšší rozdíl je možné pozorovat v roce 2013 a to o 6,51 %. 


 */