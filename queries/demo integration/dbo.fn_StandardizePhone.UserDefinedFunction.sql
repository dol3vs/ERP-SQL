USE [demo_integration]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_StandardizePhone]    Script Date: 07-Apr-25 1:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_StandardizePhone] (@phone NVARCHAR(50))
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN REPLACE(REPLACE(REPLACE(@phone, '-', ''), ' ', ''), '(', '')
END;
GO
