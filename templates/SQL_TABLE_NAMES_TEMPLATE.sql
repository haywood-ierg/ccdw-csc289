SELECT DISTINCT
       TABLE_NAME
  FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = ${TableSchema}