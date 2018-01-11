USE [IERG]
GO
/****** Object:  View [history].[INSTITUTIONS_ATTEND__TRANSCRIPT]    Script Date: 1/11/2018 10:12:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [history].[INSTITUTIONS_ATTEND__TRANSCRIPT] AS
SELECT [INSTA.INSTITUTIONS.ID], [INSTA.PERSON.ID]
       
, CAST(LTRIM(RTRIM(CA1.Item)) AS DATE) AS [INSTA.TRANSCRIPT.DATE]
, CAST(LTRIM(RTRIM(CA2.Item)) AS VARCHAR(28)) AS [INSTA.TRANSCRIPT.STATUS]
, CAST(LTRIM(RTRIM(CA3.Item)) AS VARCHAR(20)) AS [INSTA.TRANSCRIPT.TYPE]
     , CA1.ItemNumber AS ItemNumber
     , EffectiveDatetime
  FROM [history].[INSTITUTIONS_ATTEND]
  
 CROSS APPLY dbo.DelimitedSplit8K([INSTA.TRANSCRIPT.DATE],', ') CA1
 CROSS APPLY dbo.DelimitedSplit8K([INSTA.TRANSCRIPT.STATUS],', ') CA2
 CROSS APPLY dbo.DelimitedSplit8K([INSTA.TRANSCRIPT.TYPE],', ') CA3
 WHERE COALESCE([INSTA.TRANSCRIPT.TYPE],'') != ''
       AND CA1.ItemNumber=CA2.ItemNumber
AND CA1.ItemNumber=CA3.ItemNumber

GO
