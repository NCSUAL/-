-- 코드를 입력하세요
SELECT
CONCAT('/home/grep/src/','',NEW_TABLE.BOARD_ID,'/',NEW_TABLE.FILE_ID,'',NEW_TABLE.FILE_NAME,'',NEW_TABLE.FILE_EXT)
FROM(
SELECT
B.BOARD_ID,
F.FILE_ID,
F.FILE_NAME,
F.FILE_EXT
FROM USED_GOODS_BOARD AS B
LEFT JOIN USED_GOODS_FILE AS F
ON B.BOARD_ID = F.BOARD_ID
WHERE B.VIEWS = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD)
) NEW_TABLE
