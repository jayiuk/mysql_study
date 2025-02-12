WITH TEMP_EMD_POPLTN_CNT AS (
	SELECT
		AGRDE_SE_CD,
        ADMINIST_ZONE_NO,
        ADMINIST_ZONE_NM,
        POPLTN_CNT
	FROM TB_POPLTN
    WHERE ADMINIST_ZONE_NO NOT LIKE '_____00000'
		AND POPLTN_SE_CD = 'T'
	ORDER BY POPLTN_CNT DESC
)
SELECT
	AGRDE_SE_CD, ADMINIST_ZONE_NO, ADMINIST_ZONE_NM, POPLTN_CNT,
    (POPLTN_CNT / SUM(POPLTN_CNT) OVER (PARTITION BY ADMINIST_ZONE_NO)) * 100 AS "지역별연령대비율"
FROM TEMP_EMD_POPLTN_CNT;