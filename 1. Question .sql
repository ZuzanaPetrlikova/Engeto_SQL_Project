/*
  1. Otázka

	 Rostou v prùbìhu let mzdy ve všech odvìtvích, nebo v nìkterıch klesaji?

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
  Odpovìï
  
  	 Ve všech sledovanıch odvìtví v prùbìhu let nedochází pouze k nárùstu mezd, ale je také moné pozorovat jejich pokles. 
  	 Nejvìtší pokles je v roce 2013 v odvìtví Penìnictví a pojišovnictví, a to o 8.83%.

 */