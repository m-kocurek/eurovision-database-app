/****************************** zapytania do programu *****************************/

-- kto wygrał eurowizje w latach 2017-2019
SELECT 
	uczestnicy.uczestnik,
    piosenki.tytul,
    roczniki.rok
FROM roczniki
INNER JOIN uczestnicy
ON uczestnicy.uczestnik_id=roczniki.uczestnik_id
INNER JOIN piosenki
ON piosenki.piosenka_id=roczniki.piosenka_id;

-- ile bylo uczestnikow eurowizji lata 2017-2019
SELECT
	roczniki.rok,
	COUNT(uczestnicy.uczestnik) AS ilosc_uczestnikow
FROM uczestnicy
INNER JOIN roczniki
ON uczestnicy.rok_id=roczniki.rok_id
GROUP BY uczestnicy.rok_id;

-- pokaz wszystkich uczestników, których piosenki są w innym języku niz angielski
SELECT 
	uczestnicy.uczestnik,
	piosenki.tytul,
    piosenki.jezyk
FROM uczestnicy
INNER JOIN piosenki
ON uczestnicy.piosenka_id=piosenki.piosenka_id
WHERE piosenki.jezyk != 'angielski';

-- ile razy dane państwo brało udział w eurowizji (od innej strony pytanie, ile uczestników pochodziło z jednego kraju)
-- wyświetlam liste wszystkich państw
SELECT kraje.kraj FROM kraje;

-- uzytownik podaje kraj z listy 
-- nastepnie nastepuje obliczanie wystapien danego kraju (przykład zapytania dla Polski)
SELECT 
	COUNT(uczestnicy.uczestnik) as liczba_wystąpień
FROM uczestnicy
INNER JOIN kraje
ON uczestnicy.kraj_id = kraje.kraj_id
WHERE kraje.kraj = 'Polska'
GROUP BY uczestnicy.kraj_id;

-- 1
-- pierwsze trojka rok 2017
SELECT 
    	wyniki.punkty,
    	uczestnicy.uczestnik,
    	piosenki.tytul,
    	piosenki.jezyk,
    	kraje.kraj
FROM uczestnicy
INNER JOIN eliminacje
ON eliminacje.uczestnik_id=uczestnicy.uczestnik_id
INNER JOIN piosenki
ON piosenki.piosenka_id=uczestnicy.piosenka_id
INNER JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
INNER JOIN wyniki
ON wyniki.wynik_id=eliminacje.wynik_id
WHERE uczestnicy.rok_id=1 AND eliminacje.etap = 'finał'
ORDER BY wyniki.punkty DESC
LIMIT 3;


-- pierwsze trojka rok 2018
SELECT 
    wyniki.punkty,
    uczestnicy.uczestnik,
    piosenki.tytul,
    piosenki.jezyk,
    kraje.kraj
FROM uczestnicy
INNER JOIN eliminacje
ON eliminacje.uczestnik_id=uczestnicy.uczestnik_id
INNER JOIN piosenki
ON piosenki.piosenka_id=uczestnicy.piosenka_id
INNER JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
INNER JOIN wyniki
ON wyniki.wynik_id=eliminacje.wynik_id
WHERE uczestnicy.rok_id=2 AND eliminacje.etap = 'finał'
ORDER BY wyniki.punkty DESC
LIMIT 3;

-- pierwsze trojka rok 2019
SELECT 
    	wyniki.punkty,
    	uczestnicy.uczestnik,
    	piosenki.tytul,
    	piosenki.jezyk,
    	kraje.kraj
FROM uczestnicy
INNER JOIN eliminacje
ON eliminacje.uczestnik_id=uczestnicy.uczestnik_id
INNER JOIN piosenki
ON piosenki.piosenka_id=uczestnicy.piosenka_id
INNER JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
INNER JOIN wyniki
ON wyniki.wynik_id=eliminacje.wynik_id
WHERE uczestnicy.rok_id=3 AND eliminacje.etap = 'finał'
ORDER BY wyniki.punkty DESC
LIMIT 3;


-- 2
-- Slogan i miasto goszczące finału  (proste przeszukanie jednej tabeli)                                              
-- rok 2017
SELECT 
	roczniki.rok,
    	roczniki.miasto_host,
    	roczniki.slogan
FROM roczniki
WHERE roczniki.rok_id = 1;

-- rok 2018
SELECT 
	roczniki.rok,
   	roczniki.miasto_host,
    	roczniki.slogan
FROM roczniki
WHERE roczniki.rok_id = 2;


-- rok 2019
SELECT 
	roczniki.rok,
    	roczniki.miasto_host,
    	roczniki.slogan
FROM roczniki
WHERE roczniki.rok_id = 3;


-- 3
--  kiedy odbył się final polfinal1 i polfinal2 rok 2017
SELECT
	daty.data_,
	roczniki.rok
FROM daty
INNER JOIN roczniki
ON roczniki.rok_id=daty.rok_id
WHERE daty.rok_id=1
ORDER By daty.daty_id;


-- final polfinal1 i polfinal2 rok 2018
SELECT
	daty.data_,
	roczniki.rok
FROM daty
INNER JOIN roczniki
ON roczniki.rok_id=daty.rok_id
WHERE daty.rok_id=2
ORDER By daty.daty_id;

-- final polfinal1 i polfinal2 rok 2019
SELECT
	daty.data_,
	roczniki.rok
FROM daty
INNER JOIN roczniki
ON roczniki.rok_id=daty.rok_id
WHERE daty.rok_id=3
ORDER By daty.daty_id;


-- 4 Pokaz wszystkich uczestników posortowanych alfabetycznie 
-- ROK 2017
SELECT 
	uczestnicy.uczestnik,
   	kraje.kraj
FROM uczestnicy
LEFT JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
WHERE uczestnicy.rok_id=1
ORDER BY uczestnicy.uczestnik;

-- ROK 2018
SELECT 
	uczestnicy.uczestnik,
   	kraje.kraj
FROM uczestnicy
LEFT JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
WHERE uczestnicy.rok_id=2
ORDER BY uczestnicy.uczestnik;

-- ROK 2019
SELECT 
	uczestnicy.uczestnik,
   	kraje.kraj
FROM uczestnicy
LEFT JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
WHERE uczestnicy.rok_id=3
ORDER BY uczestnicy.uczestnik;


-- 5 Kto byl w półfinale 1
-- rok 2017
SELECT
	roczniki.rok,
    uczestnicy.uczestnik,
    kraje.kraj
FROM uczestnicy
INNER JOIN roczniki
ON roczniki.rok_id=uczestnicy.rok_id
INNER JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
INNER JOIN eliminacje
ON eliminacje.uczestnik_id=uczestnicy.uczestnik_id
WHERE uczestnicy.rok_id = 1
AND eliminacje.etap = 'półfinał 1';


-- rok 2018
SELECT
	roczniki.rok,
    uczestnicy.uczestnik,
    kraje.kraj
FROM uczestnicy
INNER JOIN roczniki
ON roczniki.rok_id=uczestnicy.rok_id
INNER JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
INNER JOIN eliminacje
ON eliminacje.uczestnik_id=uczestnicy.uczestnik_id
WHERE uczestnicy.rok_id = 2
AND eliminacje.etap = 'półfinał 1';

-- rok 2019
SELECT
	roczniki.rok,
    uczestnicy.uczestnik,
    kraje.kraj
FROM uczestnicy
INNER JOIN roczniki
ON roczniki.rok_id=uczestnicy.rok_id
INNER JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
INNER JOIN eliminacje
ON eliminacje.uczestnik_id=uczestnicy.uczestnik_id
WHERE uczestnicy.rok_id = 3
AND eliminacje.etap = 'półfinał 1';


-- 6 Kto byl w półfinale 2
-- rok 2017
SELECT
	roczniki.rok,
    uczestnicy.uczestnik,
    kraje.kraj
FROM uczestnicy
INNER JOIN roczniki
ON roczniki.rok_id=uczestnicy.rok_id
INNER JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
INNER JOIN eliminacje
ON eliminacje.uczestnik_id=uczestnicy.uczestnik_id
WHERE uczestnicy.rok_id = 1
AND eliminacje.etap = 'półfinał 2';

-- rok 2018
SELECT
	roczniki.rok,
    uczestnicy.uczestnik,
    kraje.kraj
FROM uczestnicy
INNER JOIN roczniki
ON roczniki.rok_id=uczestnicy.rok_id
INNER JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
INNER JOIN eliminacje
ON eliminacje.uczestnik_id=uczestnicy.uczestnik_id
WHERE uczestnicy.rok_id = 2
AND eliminacje.etap = 'półfinał 2';


-- rok 2019
SELECT
	roczniki.rok,
    uczestnicy.uczestnik,
    kraje.kraj
FROM uczestnicy
INNER JOIN roczniki
ON roczniki.rok_id=uczestnicy.rok_id
INNER JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
INNER JOIN eliminacje
ON eliminacje.uczestnik_id=uczestnicy.uczestnik_id
WHERE uczestnicy.rok_id = 3
AND eliminacje.etap = 'półfinał 2';


-- 7 Kto byl w finale
-- rok 2017
SELECT
	roczniki.rok,
    uczestnicy.uczestnik,
    kraje.kraj
FROM uczestnicy
INNER JOIN roczniki
ON roczniki.rok_id=uczestnicy.rok_id
INNER JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
INNER JOIN eliminacje
ON eliminacje.uczestnik_id=uczestnicy.uczestnik_id
WHERE uczestnicy.rok_id = 1
AND eliminacje.etap = 'finał';

-- rok 2018
SELECT
	roczniki.rok,
    uczestnicy.uczestnik,
    kraje.kraj
FROM uczestnicy
INNER JOIN roczniki
ON roczniki.rok_id=uczestnicy.rok_id
INNER JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
INNER JOIN eliminacje
ON eliminacje.uczestnik_id=uczestnicy.uczestnik_id
WHERE uczestnicy.rok_id = 2
AND eliminacje.etap = 'finał';


-- rok 2019
SELECT
	roczniki.rok,
    uczestnicy.uczestnik,
    kraje.kraj
FROM uczestnicy
INNER JOIN roczniki
ON roczniki.rok_id=uczestnicy.rok_id
INNER JOIN kraje
ON kraje.kraj_id=uczestnicy.kraj_id
INNER JOIN eliminacje
ON eliminacje.uczestnik_id=uczestnicy.uczestnik_id
WHERE uczestnicy.rok_id = 3
AND eliminacje.etap = 'finał';


-- 8 ilość uczestników półfinału1, półfinału2 i finału
-- zapytanie dla poszczególnych roczników rózni się wartością eliminacje.rok_id
-- dla 2019 rok_id=3 , dla 2018 rok_id=2, dla 2017 rok_id=1
-- rok 2017
SELECT 
	COUNT(eliminacje.etap) AS ilość_uczestników
FROM eliminacje
WHERE eliminacje.etap = 'półfinał 1' AND eliminacje.rok_id = 1
UNION ALL
SELECT 
	COUNT(eliminacje.etap) AS ilość_uczestników
FROM eliminacje
WHERE eliminacje.etap = 'półfinał 2' AND eliminacje.rok_id = 1
UNION ALL
SELECT 
	COUNT(eliminacje.etap) AS ilość_uczestników
FROM eliminacje
WHERE eliminacje.etap = 'finał' AND eliminacje.rok_id = 1


-- 9
--ilosc uczestnikow eurowizji rok 2017
SELECT 
	COUNT(uczestnicy.uczestnik) AS ilość_uczestników
FROM uczestnicy
WHERE rok_id=1;

--ilosc uczestnikow eurowizji rok 2018
SELECT 
	COUNT(uczestnicy.uczestnik) AS ilość_uczestników
FROM uczestnicy
WHERE rok_id=2;

--ilosc uczestnikow eurowizji rok 2019
SELECT 
	COUNT(uczestnicy.uczestnik) AS ilość_uczestników
FROM uczestnicy
WHERE rok_id=3;


-- 10
-- sprawdz czy uczestnik dostal sie do finalu
-- zapytanie dla poszczególnych roczników rózni się wartością eliminacje.rok_id
-- dla 2019 rok_id=3 , dla 2018 rok_id=2, dla 2017 rok_id=1
-- wyswietlam wszystkich uczestnikow w danym roku
SELECT 
	uczestnicy.uczestnik
FROM uczestnicy
WHERE uczestnicy.rok_id = 1;

-- podaje uczestnika
SELECT
	COUNT(uczestnicy.uczestnik) as punkt
FROM uczestnicy
INNER JOIN eliminacje
ON eliminacje.uczestnik_id = uczestnicy.uczestnik_id
WHERE uczestnicy.uczestnik = 'Kasia Moś'
AND eliminacje.etap = 'finał'
AND eliminacje.rok_id = 1;


-- 11
-- pokaz kto miał największą liczbę punktów a kto najmniejszą w finale
-- zapytanie dla poszczególnych roczników rózni się wartością eliminacje.rok_id
-- dla 2019 rok_id=3 , dla 2018 rok_id=2, dla 2017 rok_id=1
-- najwieksza

SELECT
	uczestnicy.uczestnik,
    	wyniki.punkty as max_wynik,
    	eliminacje.etap
FROM uczestnicy
INNER JOIN eliminacje
ON eliminacje.uczestnik_id = uczestnicy.uczestnik_id
INNER JOIN wyniki
ON eliminacje.wynik_id = wyniki.wynik_id
WHERE eliminacje.rok_id = 1
AND wyniki.punkty IN 
(SELECT 
	MAX(wyniki.punkty)
FROM wyniki
INNER JOIN eliminacje
ON eliminacje.wynik_id = wyniki.wynik_id
WHERE eliminacje.rok_id = 1
AND eliminacje.etap = 'finał');

-- najmniejsza
SELECT
	uczestnicy.uczestnik,
    	wyniki.punkty as min_wynik,
   	eliminacje.etap
FROM uczestnicy
INNER JOIN eliminacje
ON eliminacje.uczestnik_id = uczestnicy.uczestnik_id
INNER JOIN wyniki
ON eliminacje.wynik_id = wyniki.wynik_id
WHERE eliminacje.rok_id = 1
AND wyniki.punkty IN 
(SELECT 
	MIN(wyniki.punkty)
FROM wyniki
INNER JOIN eliminacje
ON eliminacje.wynik_id = wyniki.wynik_id
WHERE eliminacje.rok_id = 1
AND eliminacje.etap = 'finał');


-- 12 
-- Pokaz uczestników eurowizji spoza Europy
-- zapytanie dla poszczególnych roczników rózni się wartością uczestnicy.rok_id
-- dla 2019 rok_id=3 , dla 2018 rok_id=2, dla 2017 rok_id=1
SELECT kraje.kraj_id, kraje.kontynent, uczestnicy.uczestnik
FROM kraje
INNER JOIN uczestnicy
ON kraje.kraj_id = uczestnicy.kraj_id
WHERE kraje.kontynent != 'Europa'
INTERSECT
SELECT uczestnicy.kraj_id, kraje.kontynent, uczestnicy.uczestnik
FROM uczestnicy
INNER JOIN kraje
ON kraje.kraj_id = uczestnicy.kraj_id
WHERE uczestnicy.rok_id = 1;

--mozna zamienic intersect na inner join
SELECT kraje.kraj_id, kraje.kontynent, uczestnicy.uczestnik
FROM kraje
INNER JOIN uczestnicy
ON kraje.kraj_id = uczestnicy.kraj_id
WHERE kraje.kontynent != 'Europa'
AND uczestnicy.rok_id = 1;

