USE classicmodels;
SELECT *
FROM
	customers
WHERE country = 'usa' AND city = 'nyc'
;
SELECT *
FROM
	customers
WHERE country = 'usa' OR contactLastName = 'lee'
;
SELECT *
FROM
	payments
;
SELECT *
FROM
	payments
WHERE 
	amount BETWEEN 10000 AND 50000
    AND paymentDate BETWEEN '2003-05-20' AND '2003-06-05'
    AND checkNumber LIKE '%JM%'
;
SELECT *
FROM
	offices
WHERE country IN ('USA', 'France', 'UK')
;
SELECT *
FROM
	offices
WHERE country NOT IN ('USA', 'France', 'UK')
;
-- WHERE의 기본 목적 : 필터링
