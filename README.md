# Engeto_SQL_Project
Finální SQL project k absolvování kurzu Engeto Datová Akademie


# Struktura projektu

- dokumentace

- soubory s jednotlivými otázkami (1.Question.sql,2.Question.sql, 3.Question.sql, 4.Question.sql, 5.Question.sgl)

- soubory s tabulkami (t_zuzana_petrlikova_project_sql_primary_final.sql, t_zuzana_petrlikova_project_sql_secondary_final.sql)


# Zadání

Úkolem projektu je připravit datové podklady, které slouží k porovnání dostupnosti potravin na základě průměrných příjmů za určité časové období.

Na základě těchto datových podkladů vypracovat odpovědi na 5 stanovených výzkumných otázek:

1) Rostou v průběhu let mzdy ve všech odvětvích nebo v některých klesají?

2) Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?

3) Která kategorie potravin zdražuje nejpomaleji - je u ní nejnižší percentuální meziroční nárůst?
 
4) Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než nárůst mezd (větší než 10 %)?

5) Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?



# Hlavní tabulka

Nejdříve byla vytvořena primární tabulka z názvem t_zuzana_petrlikova_project_sql_primary_final. 

Tato tabulka nám poskytuje data o cenách potravin a výši mezd v České republice sjednocených na totožné porovnatelné období.
Konkrétné obsahuje sloupce: food_category_code, food_name, year, food_value, price_unit, industry_code, industry_name, salary.

Data pro odpovědi na první čtyři otázky byla čerpána z této tabulky.



# Sekundární tabulka

Následně byla vytvořena sekundární tabulka s názvem t_zuzana_petrlikova_project_sql_secondary_final.

Tato tabulka nám nabízí ekonomická data o evropských státech. Konkrétně obsahuje sloupce: country, year, GDP, taxes, gini.

Tato tabulka obsahuje datové údaje, které jsou klíčové pro pátou otázku.


# Odpovědi na otázky
## 1. Otázka -  Rostou v průběhu let mzdy ve všech odvětvích nebo v některých klesají?

Ve všech sledovaných odvětvích je mezi lety 2006 a 2018 zaznamenán nárůst mezd.
 

## 2. Otázka - Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?

V roce 2006 bylo možné si za průměrnou mzdu koupit 1511,8 litrů mléka a 1322,8 kilogramů chleba.
V roce 2018 bylo možné si za průměrnou mzdu koupit 1654,6 litrů mléka a 1378,8 kilogramů chleba.


## 3. Otázka - Která kategorie potravin zdražuje nejpomaleji - je u ní nejnižší percentuální meziroční nárůst?

Nejnižší procentuální nárůst byl zaznamenán v roce 2007 potraviny: Rajská jablka červená kulatá. 
Cena poklesla o 31.03%.


## 4. Otázka - Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než nárůst mezd (větší než 10 %)?

V žádném roce není mezirončí percentuální nárůst cen potravin vyšší o více než 10 % oproti nárůstu mezd. 
Nejvyšší rozdíl je možné pozorovat v roce 2013 a to o 6,51 %.


## 5. Otázka - Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?

Výška HDP nevykazuje přímý a jednoznačný vliv na změny ve mzdách a cenách potravin.


