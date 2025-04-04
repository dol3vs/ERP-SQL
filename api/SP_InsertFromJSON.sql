
create Proc [dbo].[SP_InsertFromJSON]( @jsonata NVARCHAR(MAX),@Table Nvarchar(50) )
as

 --   DECLARE @jsonata NVARCHAR(MAX)

	--SELECT @jsonata = [JsonResponse] FROM [dbo].[LogSoapRequest] WHERE id = 2
	SELECT @jsonata = Replace(@jsonata,'''','''''''')

DECLARE @Query NVARCHAR(MAX)=N' INSERT INTO '+ @Table +' ('



SELECT @Query+=T.ColumnName+','
FROM
(    

SELECT   y.[key] AS ColumnName,
         x.[Key]                                    
FROM OPENJSON(@jsonata,'$.status.repdata') x
CROSS APPLY (SELECT * FROM OPENJSON(x.[value])) y

) AS T
WHERE T.[Key]=0


SET @Query=STUFF(@Query,LEN(@Query),1,' ')+' ) VALUES ('

SELECT @Query+=''''+Replace(iSNULL(T.Value,''),'''','') +''''+
       (CASE WHEN ISNULL(LEAD(T.[Key]) OVER(ORDER BY T.[Key]),0)=T.[Key] THEN ',' ELSE '),(' END) 
FROM
(
SELECT   y.[key] AS ColumnName,
         y.[Value],
         X.[key]
FROM OPENJSON(@jsonata,'$.status.repdata') x
CROSS APPLY (SELECT * FROM OPENJSON(x.[value])) y
) AS T



SET @Query=SUBSTRING(@Query,1,LEN(@Query)-2)

--Print Query Statment
PRINT (@Query)

EXEC(@Query)


