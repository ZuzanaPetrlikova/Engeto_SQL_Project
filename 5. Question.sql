/*
  5. Otázka
 	
	Má výška HDP vliv na zmìny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výraznìji v jednom roce,
	projeví se to na cenách potravin èi mzdách ve stejném nebo následujícím roce výraznìjším rùstem?


 */


SELECT 
    subquery1.year,
    ROUND(subquery1.gdp / LAG(subquery1.gdp) OVER (ORDER BY subquery1.year) * 100 - 100, 2) AS gdp_percentage_difference,
    subquery2.salary_percentage_difference,
    subquery2.food_percentage_difference
FROM 
    (
        SELECT 
            country,
            year,
            gdp
        FROM t_zuzana_petrlikova_project_sql_secondary_final AS sf
        WHERE country = 'Czech Republic'
        GROUP BY year, country, gdp
    ) AS subquery1
JOIN 
    (
        SELECT 
            year,
            ROUND(avg_salary / LAG(avg_salary) OVER (ORDER BY year) * 100 - 100, 2) AS salary_percentage_difference,
            ROUND(avg_food / LAG(avg_food) OVER (ORDER BY year) * 100 - 100, 2) AS food_percentage_difference
        FROM (
	            SELECT
	                year,
	                AVG(salary) AS avg_salary,
	                AVG(food_value) AS avg_food
	            FROM t_zuzana_petrlikova_project_sql_primary_final AS pf
	            GROUP BY year
        	) AS dif
    ) AS subquery2
ON subquery1.year = subquery2.year
WHERE subquery1.year BETWEEN 2006 AND 2018 AND subquery1.country = 'Czech Republic'
ORDER BY subquery1.year;





/*
  Odpovìï

Výška HDP nevykazuje pøímý a jednoznaèný vliv na zmìny ve mzdách a cenách potravin

 */