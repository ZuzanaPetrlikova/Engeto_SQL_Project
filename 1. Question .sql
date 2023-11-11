/*
  1. Ot�zka

	 Rostou v pr�b�hu let mzdy ve v�ech odv�tv�ch, nebo v n�kter�ch klesaji?

 */

SELECT 
		industry_name,
		SUM(CASE WHEN year = 2006 THEN salary ELSE 0 END) AS salary_2006,
		SUM(CASE WHEN year = 2018 THEN salary ELSE 0 END) AS salary_2018,
	CASE
	    WHEN SUM(CASE WHEN year = 2018 THEN salary ELSE 0 END) > SUM(CASE WHEN year = 2006 THEN salary ELSE 0 END) THEN 'Growth'
	    WHEN SUM(CASE WHEN year = 2018 THEN salary ELSE 0 END) < SUM(CASE WHEN year = 2006 THEN salary ELSE 0 END) THEN 'Decline'
    	ELSE 'Same'
 	END AS 'change'
FROM t_zuzana_petrlikova_project_sql_primary_final
WHERE year IN (2006, 2018)
GROUP BY industry_name;

/*
  Odpov��
  
	Ve v�ech sledovan�ch odv�tv�ch je mezi lety 2006 a 2018 zaznamen�n n�rust mezd.
  
 */



