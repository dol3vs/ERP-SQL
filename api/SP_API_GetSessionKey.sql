

create Proc [dbo].[SP_API_GetSessionKey]

as

--alter   proc [dbo].[API_Priority_CreateDocument]

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

	--	createSession   


	select @Url = @ServerUrl +'createSession/' + @ApiCompanyKey +'/' + @CompanyName
	select @RequestMethod = 'GET';
	select @Headers = '';
	--select @Username = 'agent';	
	--select @Password = '1234';
	select @ContentType = '';
	select @Accept = '';
	select @Status = 0;
	select @JsonResponse = '';
	

--exec [dbo].[SendRequest] @Url,@RequestMethod,@Headers,@Username,@Password,@ContentType,@Accept,@JsonRequest,@Status out,@JsonResponse out,@Errors out, @Log out

		DECLARE @Result INT, @Status1 INT, @StatusText VARCHAR(100), @ResponseText NVARCHAR(MAX)
		EXEC    @Result = dbo.usp_sys_InvokeWebService 'GET', @Url, @Timeout = 5
								, @Status = @Status1 OUTPUT, @StatusText = @StatusText OUTPUT, @ResponseText = @JsonResponse OUTPUT
		SELECT  @Result AS Result, @Status1 AS Status, @StatusText AS StatusText, @JsonResponse AS ResponseText
		update [dbo].[API_HHH_Parameters] set APISessionKey = @ResponseText


update API_Parameters set [APISessionKey] = @JsonResponse





