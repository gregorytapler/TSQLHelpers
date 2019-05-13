USE [master]
GO

CREATE FUNCTION [dbo].[GetFileNameFromPath] (@input VARCHAR(256))
RETURNS VARCHAR(126)
AS BEGIN
RETURN substring(@input, len(@input)-charindex('\',reverse(@input),0)+2,len(@input))
END