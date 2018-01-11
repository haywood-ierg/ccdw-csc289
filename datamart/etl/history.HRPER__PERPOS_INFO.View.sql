USE [IERG]
GO
/****** Object:  View [history].[HRPER__PERPOS_INFO]    Script Date: 1/11/2018 10:12:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [history].[HRPER__PERPOS_INFO] AS
SELECT [HRPER.ID]
       
, CAST(LTRIM(RTRIM(CA1.Item)) AS DATE) AS [HRP.PERPOS.END.DATE]
, CAST(LTRIM(RTRIM(CA2.Item)) AS DATE) AS [HRP.PERPOS.LAST.PAY.DATE]
, CAST(LTRIM(RTRIM(CA3.Item)) AS DATE) AS [HRP.PERPOS.START.DATE]
     , CA1.ItemNumber AS ItemNumber
     , EffectiveDatetime
  FROM [history].[HRPER]
  
 CROSS APPLY dbo.DelimitedSplit8K([HRP.PERPOS.END.DATE],', ') CA1
 CROSS APPLY dbo.DelimitedSplit8K([HRP.PERPOS.LAST.PAY.DATE],', ') CA2
 CROSS APPLY dbo.DelimitedSplit8K([HRP.PERPOS.START.DATE],', ') CA3
 WHERE COALESCE([HRP.PERPOS.START.DATE],'') != ''
       AND CA1.ItemNumber=CA2.ItemNumber
AND CA1.ItemNumber=CA3.ItemNumber

GO
