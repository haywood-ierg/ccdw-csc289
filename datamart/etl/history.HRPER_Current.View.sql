USE [IERG]
GO
/****** Object:  View [history].[HRPER_Current]    Script Date: 1/11/2018 10:12:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [history].[HRPER_Current] AS
  SELECT [HRPER.ID], [HRP.FIRST.NAME], [HRP.MIDDLE.NAME], [HRP.LAST.NAME], [HRP.MAIDEN.LAST.NAME], [HRP.NICKNAME], [HRP.PREFIX], [HRP.SUFFIX], [HRP.BIRTH.DATE], [HRP.DECEASED.DATE], [HRP.MARITAL.STATUS], [HRP.PERSTAT.START.DATE], [HRP.PERSTAT.END.DATE], [HRP.PERPOS.START.DATE], [HRP.PERPOS.END.DATE], [HRP.PERLV.START.DATE], [HRP.PERLV.END.DATE], [HRP.LAST.PERIOD.PAID], [HRP.PERPOS.LAST.PAY.DATE], [HRP.PERLV.LAST.PAY.DATE], [HRP.EFFECT.EMPLOY.DATE], [HRP.EFFECT.TERM.DATE], [HRP.SERVICE.YEARS], [HRP.SERVICE.MONTHS], [X842.SERVICE.YEARS], [X842.SERVICE.YEARS2], [X.842.IS.FACULTY], [HRP.ACTIVE.STATUS], [HRP.CURRENT.STATUS], [HRP.PERSTAT.STATUS], [X.ACTIVE.STATUS], [HRP.ADR.LINES], [HRP.ADR.CITY], [HRP.ADR.STATE], [HRP.ADR.ZIP], [HRP.PRI.DEPT1], [HRP.PRI.DEPT.DESC], [XHRP.XNC.ACAD.LEVEL], [EffectiveDatetime], [ExpirationDatetime], [CurrentFlag] 
  FROM [history].[HRPER]
  WHERE CurrentFlag = 'Y'
GO
