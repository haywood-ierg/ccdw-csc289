WITH meta AS (
	SELECT REPLACE(m.SOURCE,'.','_') AS TABLE_NAME
	     , m.[DATA.ELEMENT] AS COLUMN_NAME
	FROM [IERG].[history].[META__ALL_CDD_Current] m
   --WHERE m.[DATA.ELEMENT] LIKE '%LOCATION%'
), sqlsvr AS (
    SELECT c.TABLE_NAME
	     , c.COLUMN_NAME
	FROM INFORMATION_SCHEMA.COLUMNS c
   WHERE c.TABLE_SCHEMA = 'input'
)
SELECT meta.*
  FROM meta
 INNER JOIN sqlsvr
    ON (sqlsvr.TABLE_NAME = meta.TABLE_NAME
    AND sqlsvr.COLUMN_NAME = meta.COLUMN_NAME)
 WHERE meta.COLUMN_NAME LIKE '%LOCATION%' 