# Engeto_SQL_Project
Fin�ln� SQL project k absolvov�n� Engeto Data Akademie

# Struktura projektu

dokumentace
soubory s jednotliv�mi ot�zkami(1.Question.sql, 2.Question.sql, 3.Question.sql, 4.Question.sql, 5.Question.sgl)
soubory s tabulkami (t_zuzana_petrlikova_project_sql_primary_final.sql, t_zuzana_petrlikova_project_sql_secondary_final.sql)


# Zad�n�

�kol projektu je p�ipravit podklady a vypracovat odpov�di na 5 stanoven�ch v�zkumn�ch ot�zek. 


# Hlavn� tabulka

Nejd��ve byla vytvo�ena prim�rn� tabulka z n�zvem t_zuzana_petrlikova_project_sql_primary_final. Z t�to tabulky byli �erp�ny data pro odpov�di na prvn� �ty�i ot�zky.

Tato tabulka n�m poskytuje data o cen�ch potravin a v��i mezd v �esk� republice sjednocen�ch na toto�n� porovnateln� obdob�.
Konkr�tn� obsahuje sloupce: food_category_code, food_name, year, food_value, price_unit, industry_code, industry_name, salary.


# Sekund�rn� tabulka

N�sledn� byla vytvo�ena sekund�rn� tabulka s n�zvem t_zuzana_petrlikova_project_sql_secondary_final, kter� obsahuje pot�ebn� �daje k p�t� ot�zce. 

Tato tabulka n�m nab�z� ekonomick� data o evropsk�ch st�tech. Konkr�tn� obsahuje sloupce: country, year, GDP, taxes, gini.


# V�zkumn� ot�zky

Bylo stanoveno 5 v�zkumn�ch ot�zek, na kter� tento projekt nab�z� odpov�d�:


Rostou v pr�b�hu let mzdy ve v�ech odv�tv�ch nebo v n�kter�ch klesaj�?
Kolik je mo�n� si koupit litr� ml�ka a kilogram� chleba za prvn� a posledn� srovnateln� obdob� v dostupn�ch datech cen a mezd?
Kter� kategorie potravin zdra�uje nejpomaleji - je u n� nejni��� percentu�ln� meziro�n� n�r�st?
Existuje rok, ve kter�m byl meziro�n� n�r�st cen potravin v�razn� vy��� ne� n�r�st mezd (v�t�� ne� 10 %)?
M� v��ka HDP vliv na zm�ny ve mzd�ch a cen�ch potravin? Neboli, pokud HDP vzroste v�razn�ji v jednom roce, projev� se to na cen�ch potravin �i mzd�ch ve stejn�m nebo n�sleduj�c�m roce v�razn�j��m r�stem?




## 1. Ot�zka -  Rostou v pr�b�hu let mzdy ve v�ech odv�tv�ch nebo v n�kter�ch klesaj�?

Ve v�ech sledovan�ch odv�tv�ch je mezi lety 2006 a 2018 zaznamen�n n�r�st mezd.
 

## 2. Ot�zka - Kolik je mo�n� si koupit litr� ml�ka a kilogram� chleba za prvn� a posledn� srovnateln� obdob� v dostupn�ch datech cen a mezd?

V roce 2006 bylo mo�n� si za pr�m�rnou mzdu koupit 1511,8 litr� ml�ka a 1322,8 kilogram� chleba.
V roce 2018 bylo mo�n� si za pr�m�rnou mzdu koupit 1654,6 litr� ml�ka a 1378,8 kilogram� chleba.


## 3. Ot�zka - Kter� kategorie potravin zdra�uje nejpomaleji - je u n� nejni��� percentu�ln� meziro�n� n�r�st?

Nejni��� procentu�ln� n�r�st byl zaznamen�n v roce 2007 potraviny: Rajsk� jablka �erven� kulat�. 
Cena poklesla o 31.03%.


## 4. Ot�zka - Existuje rok, ve kter�m byl meziro�n� n�r�st cen potravin v�razn� vy��� ne� n�r�st mezd (v�t�� ne� 10 %)?

V ��dn�m roce nen� meziron�� percentu�ln� n�r�st cen potravin vy��� o v�ce ne� 10 % oproti n�r�stu mezd. 
Nejvy��� rozd�l je mo�n� pozorovat v roce 2013 a to o 6,51 %.


## 5. Ot�zka - M� v��ka HDP vliv na zm�ny ve mzd�ch a cen�ch potravin? Neboli, pokud HDP vzroste v�razn�ji v jednom roce, projev� se to na cen�ch potravin �i mzd�ch ve stejn�m nebo n�sleduj�c�m roce v�razn�j��m r�stem?

V��ka HDP nevykazuje p��my a jednozna�n� vliv na zm�ny ve mzd�ch a cen�ch potravin.


