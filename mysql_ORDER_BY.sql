USE classicmodels;
SELECT *
FROM
	orders
ORDER BY orderNumber DESC
; -- 내림차순
SELECT *
FROM
	orders
ORDER BY orderNumber ASC
; -- 오름차순(ASC생략 가능)

SELECT customerNumber, orderNumber
FROM
	orders
ORDER BY customerNumber ASC
;
SELECT customerNumber, orderNumber
FROM
	orders
ORDER BY 1 ASC
; -- 1은 첫번째 필드명
SELECT customerNumber, orderNumber
FROM
	orders
ORDER BY 1 ASC, 2 DESC
; -- 첫번째 필드는 오름차순, 첫번째 필드가 같은 경우 같은거 내에선 2번째 필드는 내림차순