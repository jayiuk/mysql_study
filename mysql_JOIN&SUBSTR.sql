USE classicmodels;
SELECT
	A.Orderdate
    , priceeach * quantityordered
FROM ORDERS A
LEFT JOIN orderdetails B
ON A.Ordernumber = B.ordernumber
; -- ERD참고해야 이해 가능

SELECT
	A.Orderdate
    , SUM(priceeach * quantityordered)
FROM ORDERS A
LEFT JOIN orderdetails B
ON A.Ordernumber = B.ordernumber
GROUP BY 1
ORDER BY 2 DESC
;

SELECT SUBSTR('ABCDE', 1, 2); -- 서브스트링. 인덱스 번호 1부터 시작

SELECT SUBSTR('2003-01-06', 1, 7);

SELECT
	SUBSTR(A.Orderdate, 1, 7) AS MONTH
    , SUM(priceeach * quantityordered) AS SALES
FROM ORDERS A
LEFT JOIN orderdetails B
ON A.Ordernumber = B.ordernumber
GROUP BY 1
ORDER BY 2 DESC
;

SELECT
	SUBSTR(A.Orderdate, 1, 4) AS YEAR
    , SUM(priceeach * quantityordered) AS SALES
FROM ORDERS A
LEFT JOIN orderdetails B
ON A.Ordernumber = B.ordernumber
GROUP BY 1
ORDER BY 2 DESC
;

SELECT
	orderDate
    , COUNT(DISTINCT customerNumber) AS 소비자_수
    , COUNT(orderNumber) AS 주문_수
FROM orders
GROUP BY 1
ORDER BY 1
;

SELECT
	SUBSTR(A.orderDate, 1, 4) AS 연도
    , COUNT(DISTINCT customerNumber) AS 구매고객_수
    , SUM(priceEach * quantityordered) AS 판매액
FROM orders A
LEFT JOIN orderdetails B
ON A.orderNumber = B.orderNumber
GROUP BY 1
ORDER BY 1
;
