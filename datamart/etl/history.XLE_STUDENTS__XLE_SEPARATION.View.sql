USE [IERG]
GO
/****** Object:  View [history].[XLE_STUDENTS__XLE_SEPARATION]    Script Date: 1/11/2018 10:12:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [history].[XLE_STUDENTS__XLE_SEPARATION] AS
SELECT [XLE.STUDENTS.ID]
       
, CAST(LTRIM(RTRIM(CA1.Item)) AS DATE) AS [XLE.SEPARATION.DATE]
     , CA1.ItemNumber AS ItemNumber
     , EffectiveDatetime
  FROM [history].[XLE_STUDENTS]
  
 CROSS APPLY dbo.DelimitedSplit8K([XLE.SEPARATION.DATE],', ') CA1
 WHERE COALESCE([XLE.SEPARATION.DATE],'') != ''
       
GO
