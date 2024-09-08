-- 코드를 입력하세요
WITH 
NEW_DATA AS(
SELECT
*
FROM CAR_RENTAL_COMPANY_CAR C
WHERE CAR_TYPE = '세단'
)

SELECT
C.CAR_ID
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY C
INNER JOIN NEW_DATA N
ON C.CAR_ID = N.CAR_ID
WHERE EXTRACT(MONTH FROM START_DATE) = 10
GROUP BY C.CAR_ID
ORDER BY CAR_ID DESC