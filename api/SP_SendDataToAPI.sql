

create Proc [dbo].[SP_SendDataToAPI]

as

	--Print 'a'
	--delete from [LogSoapRequest] where ServerDate < getdate()-30

	exec SP_API_HHH_GetSessionKey

	

DECLARE @Result INT, @Status1 INT, @StatusText VARCHAR(100), @ResponseText NVARCHAR(MAX)


	Print 'b'
	
	declare @APISessionKey Nvarchar(255)

	Select @APISessionKey = [APISessionKey] from API_HHH_Parameters

	if @APISessionKey = ''
	begin
	RAISERROR('No API Session Key from HHH !!!', 16, 1)
	RETURN
	end

	Print 'c'
	declare @DocType nvarchar(50) = ''--,
	declare @JsonRequest nvarchar(max) = ''--,
	declare @JsonResponse nvarchar(max) = ''-- out,
	declare @Status int = -1 --out,
	declare @Errors nvarchar(max) = '' --out,
	declare @Log nvarchar(max) = '' --out

	
	Declare @ApiCompanyKey Nvarchar(500)
	declare  @Url nvarchar(4000);
    declare  @RequestMethod nvarchar(4000);
    declare  @Headers nvarchar(4000);
    declare  @Username nvarchar(50);
    declare  @Password nvarchar(50);
	declare  @ContentType nvarchar(50);
    declare  @Accept nvarchar(50);

	declare  @ServerUrl nvarchar(512);
	declare  @CompanyName nvarchar(100);
	select top 1 @ServerUrl = ServerUrl, @CompanyName= CompanyName, @Username = ApiUser, @Password = ApiPassword,@ApiCompanyKey = [CompanyAPIKey] 
	from API_Parameters

	
	--set @Header = 'Authorization: ' + [APISessionKey] from 
	set @ContentType = 'application/json'


	select @Url = @ServerUrl + 'invApi/createDoc'
	select @RequestMethod = 'POST';
--	select top 1 @Headers = 'Authorization: '+ [APISessionKey] from API_HHH_Parameters
select top 1 @Headers =  [APISessionKey] from API_HHH_Parameters
	--select @Username = 'agent';	
	--select @Password = '1234';
	--
	select @Accept = '';
	select @Status = 0;


	Print 'd'
	declare @orders table (Docnum nvarchar(40),DoctypeID Nvarchar(40))
	insert into @orders(Docnum,DoctypeID)
	select Docnum,DoctypeID from Office.dbo.DocumentsoutMain where IsTransferedToBO =0

	declare @Docnum nvarchar(40)
	declare @DoctypeID Nvarchar(40)


	while Exists(select * from @orders)

	begin

	select top 1 @Docnum = Docnum,@DoctypeID = DoctypeID from @orders
	update Office.dbo.DocumentsoutSub set Quantity = 1 where Quantity <1 and Docnum = @Docnum and DoctypeID = @DoctypeID

	Print 'e'
	select @JsonRequest = dbo.[GetSalesOrderDetails](@Docnum,@DoctypeID)
	select @JsonRequest = Replace(Replace(@JsonRequest,'{"rows":[','{"issueStock": "true","deleteTemp": "true","rows":'),'}]}]}','}]}}')
	--exec [dbo].[SendRequest] @Url,@RequestMethod,@Headers,@Username,@Password,@ContentType,@Accept,@JsonRequest,@Status out,@JsonResponse out,@Errors out, @Log out
	
	
		DECLARE  @PostData NVARCHAR(MAX)
		SELECT  @PostData = @JsonRequest
		EXEC    @Result = dbo.usp_sys_InvokeWebService 'POST', @Url, @Timeout = 20,@AuthHeader = @Headers
				, @PostData=@PostData, @Status = @Status OUTPUT, @StatusText = @StatusText OUTPUT, @ResponseText = @JsonResponse OUTPUT
		SELECT 'e', @PostData,@Result AS Result, @Status AS Status, @StatusText AS StatusText,@ResponseText,@Url,@Headers


	INSERT INTO [dbo].[LogSoapRequest]
				   ([ServerDate] ,[Keys],[UrlAddress] ,[SOAPAction] ,[Headers],[XmlRequest],[Username],[Password] ,[IsSendReceiveAsJson],[XmlResponse],[LogDll],[StatusCode],[JsonRequest],[JsonResponse])
		select		getdate(),	@Docnum +'ORD' ,@Url,@RequestMethod,@Headers,'',@Username,@Password,1,'',@Log,@Status,@JsonRequest,@JsonResponse

	
	if exists(select @JsonResponse where  @JsonResponse like '%OK%')
	begin
	Select @JsonResponse= LEFT(RIGHT(@JsonResponse, len(@JsonResponse)-1),len(@JsonResponse)-2)  
	select JSON_VALUE(@JsonResponse,'$.NewDocumentStockID')
	update Office.dbo.DocumentsoutMain set IsTransferedToBO = 1 , BoDocnum = JSON_VALUE(@JsonResponse,'$.NewDocumentStockID') where docnum = @Docnum and DoctypeID = @DoctypeID
	end
	else 
	begin
	update  Office.dbo.DocumentsoutMain set IsTransferedToBOFailed =1 ,TransferedToBOMessage =@JsonResponse  where docnum = @Docnum and DoctypeID = @DoctypeID
	end
	delete from @orders where docnum = @Docnum and DoctypeID = @DoctypeID
	--delete from LogSoapRequest where ServerDate > GETDATE()-10
	end





	
