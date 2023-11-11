 CREATE OR REPLACE TABLE t_zuzana_petrlikova_project_SQL_secondary_final AS
	SELECT 
		c.country,
		e.year,
		e.GDP,
		e.taxes,
		e.gini
	FROM countries AS c
	JOIN economies AS e
		ON c.country = e.country
	WHERE continent = 'Europe' AND year BETWEEN  2006 AND 2018;
				
	
	
