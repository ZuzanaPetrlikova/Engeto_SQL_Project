# Engeto_SQL_Project
Finální SQL project k absolvování Engeto Data Akademie

# Struktura projektu

dokumentace
soubory s jednotlivými otázkami(1.Question.sql, 2.Question.sql, 3.Question.sql, 4.Question.sql, 5.Question.sgl)
soubory s tabulkami (t_zuzana_petrlikova_project_sql_primary_final.sql, t_zuzana_petrlikova_project_sql_secondary_final.sql)


# Zadání

Úkol projektu je pøipravit podklady a vypracovat odpovìdi na 5 stanovených výzkumných otázek. 


# Hlavní tabulka

Nejdøíve byla vytvoøena primární tabulka z názvem t_zuzana_petrlikova_project_sql_primary_final. Z této tabulky byli èerpány data pro odpovìdi na první ètyøi otázky.

Tato tabulka nám poskytuje data o cenách potravin a výši mezd v Èeské republice sjednocených na totožné porovnatelné období.
Konkrétné obsahuje sloupce: food_category_code, food_name, year, food_value, price_unit, industry_code, industry_name, salary.


# Sekundární tabulka

Následnì byla vytvoøena sekundární tabulka s názvem t_zuzana_petrlikova_project_sql_secondary_final, která obsahuje potøebné údaje k páté otázce. 

Tato tabulka nám nabízí ekonomická data o evropských státech. Konkrétnì obsahuje sloupce: country, year, GDP, taxes, gini.


# Výzkumné otázky

Bylo stanoveno 5 výzkumných otázek, na které tento projekt nabízí odpovìdí:


Rostou v prùbìhu let mzdy ve všech odvìtvích nebo v nìkterých klesají?
Kolik je možné si koupit litrù mléka a kilogramù chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?
Která kategorie potravin zdražuje nejpomaleji - je u ní nejnižší percentuální meziroèní nárùst?
Existuje rok, ve kterém byl meziroèní nárùst cen potravin výraznì vyšší než nárùst mezd (vìtší než 10 %)?
Má výška HDP vliv na zmìny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výraznìji v jednom roce, projeví se to na cenách potravin èi mzdách ve stejném nebo následujícím roce výraznìjším rùstem?




## 1. Otázka -  Rostou v prùbìhu let mzdy ve všech odvìtvích nebo v nìkterých klesají?

Ve všech sledovaných odvìtvích je mezi lety 2006 a 2018 zaznamenán nárùst mezd.
 

## 2. Otázka - Kolik je možné si koupit litrù mléka a kilogramù chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?

V roce 2006 bylo možné si za prùmìrnou mzdu koupit 1511,8 litrù mléka a 1322,8 kilogramù chleba.
V roce 2018 bylo možné si za prùmìrnou mzdu koupit 1654,6 litrù mléka a 1378,8 kilogramù chleba.


## 3. Otázka - Která kategorie potravin zdražuje nejpomaleji - je u ní nejnižší percentuální meziroèní nárùst?

Nejnižší procentuální nárùst byl zaznamenán v roce 2007 potraviny: Rajská jablka èervená kulatá. 
Cena poklesla o 31.03%.


## 4. Otázka - Existuje rok, ve kterém byl meziroèní nárùst cen potravin výraznì vyšší než nárùst mezd (vìtší než 10 %)?

V žádném roce není mezironèí percentuální nárùst cen potravin vyšší o více než 10 % oproti nárùstu mezd. 
Nejvyšší rozdíl je možné pozorovat v roce 2013 a to o 6,51 %.


## 5. Otázka - Má výška HDP vliv na zmìny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výraznìji v jednom roce, projeví se to na cenách potravin èi mzdách ve stejném nebo následujícím roce výraznìjším rùstem?

Výška HDP nevykazuje pøímy a jednoznaèný vliv na zmìny ve mzdách a cenách potravin.


