USE [IERG]
GO
/****** Object:  View [history].[ACAD_PROGRAMS_Current]    Script Date: 1/11/2018 10:12:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [history].[ACAD_PROGRAMS_Current] AS
  SELECT [ACAD.PROGRAMS.ID], [ACPG.TITLE], [ACPG.DEGREE], [ACPG.ACAD.LEVEL], [ACPG.TYPES], [ACPG.MAJORS], [ACPG.MINORS], [ACPG.CIP], [ACPG.CMPL.MONTHS], [ACPG.TERM.LENGTH], [ACPG.ACCRED.EXPIRE.DATE], [ACPG.ACAD.STANDINGS], [ACPG.ADDNL.CCDS], [ACPG.ADDNL.MAJORS], [ACPG.ADMIT.CAPACITY], [ACPG.ADMIT.RULES], [ACPG.APPLICATION.STATUS], [ACPG.ALLOW.GRADUATION.FLAG], [ACPG.GRADE.SCHEME], [ACPG.STUDENT.SELECT.FLAG], [ACPG.TRANSCRIPT.GROUPING], [ACPG.LOCATIONS], [ACPG.SCHOOLS], [ACPG.DIVISIONS], [DIV.DESC], [ACPG.DEPTS], [DEPTS.DESC], [ACPG.START.DATE], [ACPG.END.DATE], [ACPG.CATALOGS], [ACPG.APPROVAL.IDS], [ACPG.APPROVAL.AGENCY.IDS], [ACPG.APPROVAL.DATES], [ACPG.STATUS], [ACPG.STATUS.DATE], [EffectiveDatetime], [ExpirationDatetime], [CurrentFlag] 
  FROM [history].[ACAD_PROGRAMS]
  WHERE CurrentFlag = 'Y'
GO
