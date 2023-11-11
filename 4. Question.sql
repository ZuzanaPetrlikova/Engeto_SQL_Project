/*
  4. Ot�zka
 	
	Existuje rok, ve kter�m byl meziro�n� n�r�st cen potravin v�razn� vy��� ne� n�r�st mezd (v�t�� ne� 10 %)?

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
  Odpov��

	V ��dn�m roce nen� meziron�� percentu�ln� n�r�st cen potravin vy��� o v�ce ne� 10 % oproti n�r�stu mezd. 
	Nejvy��� rozd�l je mo�n� pozorovat v roce 2013 a to o 6,51 %. 


 */