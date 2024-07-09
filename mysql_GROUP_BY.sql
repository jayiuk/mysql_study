USE classicmodels;
SELECT
	DISTINCT status -- 중복값 제거
FROM
	orders
;
SELECT
	status
FROM
	orders
GROUP BY
	status
; -- DISTINCT를 쓴 것과 결과 동일

SELECT
	status
	, COUNT(*) -- 집계함수
FROM
	orders
GROUP BY
	status
;

SELECT
	status
	, COUNT(*) AS '갯수' -- 결과 테이블 이름 바꿔줌
FROM
	orders
GROUP BY
	status
HAVING COUNT(*) >= 5 -- 갯수가 5 이상만 조회.
ORDER BY 2 DESC
;

SELECT
	status
	, COUNT(*) AS '갯수' -- 결과 테이블 이름 바꿔줌
FROM
	orders
ORDER BY 2 DESC
; -- 에러남
-- Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'classicmodels.orders.status'; this is incompatible with sql_mode=only_full_group_by
-- groupby 안했다는 뜻

SELECT
	country
    , city
    , COUNT(*)
FROM
	customers
GROUP BY country, city
;

SELECT
	country
    , city
    , COUNT(*)
FROM
	customers
GROUP BY country
; -- 에러남
-- SELECT에다 쓴 것은 GROUP BY 할 때 써줘야됨