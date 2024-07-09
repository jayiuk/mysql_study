USE classicmodels;
SELECT *
FROM
	customers
WHERE country = 'usa'
;
SELECT *
FROM
	customers
WHERE customerNumber = 112
;
SELECT *
FROM
	customers
WHERE customerNumber = '112'
; -- 되긴 하는데 좋은 코드는 아님
 SELECT *
 FROM
	customers
WHERE customerNumber > 112
;
SELECT *
FROM
	customers
WHERE
	city >= 'D'
; -- 앞글자만 비교. 문자열에도 사용 가능. 잘 쓰진 않음
SELECT COUNT(*)
FROM
	customers
;
SELECT *
FROM
	customers
WHERE customerName LIKE '%Gift%'
; -- customerName에 Gift가 들어간 행만 조회
SELECT *
FROM
	customers
WHERE customerName LIKE 'La%'
;  -- 이러면 맨 앞에 La만 들어간 행만 조회
SELECT *
FROM
	customers
WHERE customerName REGEXP 'La.'
; -- 정규표현식 사용