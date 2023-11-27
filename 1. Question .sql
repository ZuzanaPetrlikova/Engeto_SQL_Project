/*
  1. Ot�zka

	 Rostou v pr�b�hu let mzdy ve v�ech odv�tv�ch, nebo v n�kter�ch klesaji?

 */

WITH CTE AS (
			SELECT 
					industry_name,
					year,
					ROUND(AVG(salary), 0) AS avg_salary,  
				    ROUND(AVG(salary) / LAG(ROUND(AVG(salary), 0)) OVER (PARTITION BY industry_name ORDER BY industry_name, year) * 100 - 100, 2) AS salary_change
			FROM t_zuzana_petrlikova_project_sql_primary_final
			WHERE year BETWEEN 2006 AND 2018
			GROUP BY industry_name, YEAR
			)
Select	
	industry_name,
    year,
    avg_salary,
    salary_change
FROM CTE
WHERE salary_change IS NOT NULL
ORDER BY salary_change, year;   
 
/*
  Odpov��
  
  	 Ve v�ech sledovan�ch odv�tv� v pr�b�hu let nedoch�z� pouze k n�r�stu mezd, ale je tak� mo�n� pozorovat jejich pokles. 
  	 Nejv�t�� pokles je v roce 2013 v odv�tv� Pen�nictv� a poji��ovnictv�, a to o 8.83%.

 */