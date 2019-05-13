CREATE FUNCTION DBO.GETEXTENSION (@input VARCHAR(256))
RETURNS VARCHAR(16)
AS BEGIN
RETURN substring(@input, len(@input)-charindex('.',reverse(@input),0)+2,len(@input))
END
