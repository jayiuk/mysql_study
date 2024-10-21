-- WITH AS 구문 : 서브쿼리에서 조회할 결과를 미리 임시 테이블 형식으로 만들어 놓는 방법
-- 임시 테이블이기 때문에 한번 사용되면 사라짐(VIEW와는 다름)
WITH TEMP_AGRDE_POPLTN_CNT AS (
SELECT AGRDE_SE_CD,
	SUM(POPLTN_CNT) AS AGRDE_POPLTN_CNT
FROM TB_POPLTN
WHERE STD_MT='202304'
	AND ADMINIST_ZONE_NO LIKE '__00000000'
    AND POPLTN_SE_CD = 'T'
GROUP BY AGRDE_SE_CD
ORDER BY AGRDE_SE_CD
)
SELECT 
	AGRDE_SE_CD,
    AGRDE_POPLTN_CNT,
    AGRDE_POPLTN_CNT / SUM(AGRDE_POPLTN_CNT) OVER() AS AGRDE_POPLTN_RATE
FROM TEMP_AGRDE_POPLTN_CNT;