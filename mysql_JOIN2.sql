USE classicmodels;

SELECT *
FROM
	orders A
LEFT JOIN orderdetails B
ON A.ordernumber = B.ordernumber
LEFT JOIN products C
ON B.productcode = C.productcode
LEFT JOIN productlines D
ON C.productline = D.productline
;

SELECT *
FROM
	productlines A
LEFT JOIN products B
ON A.productline = B.productline
LEFT JOIN orderdetails C
ON B.productcode = C.productcode
LEFT JOIN orders D
ON C.orderNumber = D.orderNumber
; -- 기준에 따라 테이블 형태가 달라짐. LEFT JOIN은 무조건 왼쪽이 기준.

SELECT
	SUBSTR(A.orderDate, 1, 4) AS 연도
    , COUNT(DISTINCT A.customerNumber) AS 구매고객_수
    , SUM(B.priceEach * B.quantityordered) AS 매출
    , SUM(B.priceEach * B.quantityordered) / COUNT(DISTINCT A.customerNumber) AS AMV
FROM orders A
LEFT JOIN orderdetails B
ON A.orderNumber = B.orderNumber
GROUP BY 1
ORDER BY 1
; -- 매출 / 구매고객_수 이렇게 하면 에러남. 매출이랑 구매고객_수는 실제 존재하는 컬럼이 아니기 때문

SELECT
	SUBSTR(A.orderDate, 1, 4) AS 연도
    , COUNT(DISTINCT A.orderNumber) AS 주문수
    , SUM(B.priceEach * B.quantityordered) AS 매출
    , SUM(B.priceEach * B.quantityordered) / COUNT(DISTINCT A.orderNumber) AS 건당구매금액
FROM orders A
LEFT JOIN orderdetails B
ON A.orderNumber = B.orderNumber
GROUP BY 1
ORDER BY 1
;

SELECT *
FROM
	orders A
LEFT JOIN orderdetails B
ON A.orderNumber = B.orderNumber
LEFT JOIN customers C
ON A.customerNumber = C.customerNumber
;