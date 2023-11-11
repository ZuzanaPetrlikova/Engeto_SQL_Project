 CREATE OR REPLACE TABLE t_zuzana_petrlikova_project_SQL_primary_final AS
	SELECT 
				subquery2.food_category_code AS food_category_code,
				pcat.name AS food_name,
				subquery2.food_year AS year,
				subquery2.food_value,
				pcat.price_unit,
				subquery1.branch_code AS industry_code,
				cpib.name AS industry_name,
				subquery1.pay_value AS salary
	FROM 	(
					SELECT 
							round(avg(cp.value)) AS pay_value,
							cp.payroll_year AS pay_year,
							cp.industry_branch_code AS branch_code
					FROM czechia_payroll AS cp
					WHERE value_type_code = 5958 AND calculation_code = 200 AND industry_branch_code IS NOT NULL
					GROUP BY pay_year, branch_code
			) AS subquery1
	JOIN czechia_payroll_industry_branch AS cpib 
		ON subquery1.branch_code = cpib.code
	JOIN 
			(		SELECT 
							round(avg(cpr.value)) AS food_value,
							year(cpr.date_from) AS food_year,
							cpr.category_code AS food_category_code
					FROM czechia_price AS cpr
					GROUP BY food_category_code, food_year
			) AS subquery2
		ON subquery1.pay_year = subquery2.food_year
	JOIN czechia_price_category AS pcat 
		ON subquery2.food_category_code = pcat.code;

	
		




      

