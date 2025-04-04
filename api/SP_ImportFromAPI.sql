

create Proc [dbo].[SP_ImportFromAPI] (@Cmd nvarchar(100) = 'All')

as

	exec SP_API_GetSessionKey

	declare @APISessionKey Nvarchar(255)

	Select @APISessionKey = [APISessionKey] from API_Parameters
	--select @APISessionKey
	if @APISessionKey = ''
	begin
	RAISERROR('No API Session Key from HHH !!!', 16, 1)
	RETURN
	end

	declare @DocType nvarchar(50) = ''--,
	declare @Data nvarchar(max) = ''--,
	declare @Params nvarchar(max) = ''--,
	declare @JsonRequest nvarchar(max) = ''--,
	declare @JsonResponse nvarchar(max) = ''-- out,
	declare @Status int = -1 --out,
	declare @Errors nvarchar(max) = '' --out,
	declare @Log nvarchar(max) = '' --out
	Declare	@ApiCompanyKey Nvarchar(500)
	declare @Url nvarchar(4000);
    declare @RequestMethod nvarchar(4000);
    declare @Headers nvarchar(4000);
    declare @Username nvarchar(50);
    declare @Password nvarchar(50);
	declare @ContentType nvarchar(50);
    declare @Accept nvarchar(50);
	Declare @DataType Nvarchar(40);
	declare @ServerUrl nvarchar(512);
	declare @CompanyName nvarchar(100);

	DECLARE @Result INT 
	declare @StatusText VARCHAR(100) 
	declare @PostData NVARCHAR(MAX)
	declare @ResponseText NVARCHAR(MAX)
	declare @AuthHeader VARCHAR(1000) 

	select top 1 @ServerUrl = ServerUrl, @CompanyName= CompanyName, @Username = ApiUser, @Password = ApiPassword,@ApiCompanyKey = [CompanyAPIKey] 
	from API_Parameters

	set @ContentType = 'application/json'

	select @Url = @ServerUrl + 'ExportDataApi/exportData'
	select @RequestMethod = 'POST';
	--select top 1 @Headers = 'Authorization: '+ [APISessionKey] from API_HHH_Parameters
	select top 1 @Headers =  [APISessionKey] from API_HHH_Parameters
	select top 1 @AuthHeader =[APISessionKey] from API_HHH_Parameters

	declare @tbl table (DataType Nvarchar(40),Params Nvarchar(max))
	insert into @tbl(DataType,Params)
	select DataType,Params from [ReportTypes] where (@Cmd = 'All') Or (CmdCommand = @Cmd)
	


	--loop on @tbl
	while exists (select * from @tbl)
	begin

	select top 1 @DataType = [DataType] from @tbl

	select @Accept = '';
	select @Status = 0;

	select @Data = Data, @Params = Params from [dbo].[ReportTypes] where [DataType] = @DataType;

	select @JsonRequest = dbo.GetReportDataWithParams(@Data,@Params);
	
		--exec [dbo].[SendRequest] @Url,@RequestMethod,@Headers,@Username,@Password,@ContentType,@Accept,@JsonRequest,@Status out,@JsonResponse out,@Errors out, @Log out

		--DECLARE @Result INT, @StatusText VARCHAR(100), @PostData NVARCHAR(MAX)
		--SELECT  @PostData = @JsonRequest
		EXEC    @Result = dbo.usp_sys_InvokeWebService @RequestMethod, @Url, @Timeout = 20,@AuthHeader = @Headers
								, @PostData = @JsonRequest, @Status = @Status OUTPUT, @StatusText = @StatusText OUTPUT, @ResponseText = @JsonResponse OUTPUT
		SELECT  @Result AS Result, @Status AS Status, @JsonResponse AS StatusText


		INSERT INTO [dbo].[LogSoapRequest]
				   ([ServerDate] ,[Keys],[UrlAddress] ,[SOAPAction] ,[Headers],[XmlRequest],[Username],[Password] ,[IsSendReceiveAsJson],[XmlResponse],[LogDll],[StatusCode],[JsonRequest],[JsonResponse])
		select		getdate(),	@DataType,@Url,@RequestMethod,@AuthHeader,'',@Username,@Password,1,'',@Log,@Status,@JsonRequest,@JsonResponse

		Print @DataType

		If @DataType = 'Agents'
		begin
			
			drop table Web_Agents
			SELECT * into Web_Agents
			FROM OPENJSON(@JsonResponse,'$.status.repdata')
			  WITH (
				AgentID INT '$."מס סוכן"',
				AgentName NVARCHAR(50) '$."שם סוכן"'
			  );

		end 
		else
		If @DataType = 'Accounts'
		begin
		truncate table Web_Accounts
		exec SP_InsertFromJSON @JsonResponse,'Web_Accounts'
		
		end 
		else
		If @DataType = 'Products'
		begin
		truncate table Web_Products
		--exec SP_InsertFromJSON @JsonResponse,'Web_Products'
			insert into Web_Products
			select * from OPENJSON(@JsonResponse,'$.status.repdata')
			with ([ProductID] [nvarchar](50) ,
				[ProductName] [nvarchar](100) ,
				[Filter] [nvarchar](50) ,
				[DepartmentID] [int] ,
				[SalePrice] [decimal](18, 4) ,
				[PurPrice] [decimal](18, 4) ,
				[Barcode] [nvarchar](50) ,
				[Location] [nvarchar](50) ,
				[Unit] [nvarchar](50) ,
				[UnitPerPack] [decimal](18, 4) ,
				[UnitWeight] [decimal](18, 4) ,
				[UnitVolume] [decimal](18, 4) ,
				[MinPrice] [decimal](18, 4) ,
				[SalesDiscount] [decimal](18, 4),
				[DiscountGroupID] [nvarchar](50),
				[ExtraNum1]  [decimal](18, 4))
		
		end 
		else
		If @DataType = 'Departments'
		begin
		truncate table Web_Departments
		exec SP_InsertFromJSON @JsonResponse,'Web_Departments'
		
		end 

		else
		If @DataType = 'ClientDiscounts'
		begin
		
		drop table Web_ClientDiscounts
			SELECT * into Web_ClientDiscounts --DepartmentID, ClientID, DiscountGroupID, PricelistID, Discount
			FROM OPENJSON(@JsonResponse,'$.status.repdata')
			  WITH (
				DepartmentID INT '$.DepartmentID',
				ClientID NVARCHAR(50) '$.ClientID',
				DiscountGroupID NVARCHAR(50) '$.DiscountGroupID',
				PricelistID int '$.PricelistID',
				Discount Decimal(18,4) '$.Discount'
			  );
		end 
				else
		If @DataType = 'ClientProducts_S'
		begin
		if len(@JsonResponse) > 100 
			begin
				drop table Web_ClientProducts_S
				SELECT * into Web_ClientProducts_S --ClientID, ProductID, MinQuantity, Price, ValidDate
				FROM OPENJSON(@JsonResponse,'$.status.repdata')
				  WITH (
					ClientID NVARCHAR(50) '$.ClientID',
					ProductID NVARCHAR(50) '$.ProductID',
					MinQuantity Int '$.MinQuantity',
					Price Decimal(18,4) '$.Price',
					ValidDate Date '$.ValidDate'
				  );
			end
		end 
		else

		If @DataType = 'Pricelists'
		begin
		drop table Web_Pricelist
			SELECT * into Web_Pricelist --ProductID, PricelistID, Price, ValidDate
			FROM OPENJSON(@JsonResponse,'$.status.repdata')
			  WITH (
				ProductID NVARCHAR(50) '$.ProductID',
				PricelistID Int '$.PricelistID',
				Price Decimal(18,4) '$.Price',
				ValidDate Date '$.ValidDate'
			  )
		where PricelistID is not null
			   
		
		end 
		If @DataType = 'Varieties'
		begin
		if len(@JsonResponse) > 100 
			begin
				drop table Web_Varieties
				SELECT * into Web_Varieties --ProductID, PricelistID, Price, ValidDate
				FROM OPENJSON(@JsonResponse,'$.status.repdata')
				  WITH (
					VarietyID NVARCHAR(50) '$.VarietyID',
					ProductID Int '$.ProductID'
				  )
	
			   
			end
		end 
			If @DataType = 'Collection'
		begin
		--drop table Web_Collection
		--exec SP_InsertFromJSON @JsonResponse,'Web_Collection'
			truncate table Web_Collection
		--exec SP_InsertFromJSON @JsonResponse,'Web_Products'
		
			insert into Web_Collection
			select *  from OPENJSON(@JsonResponse,'$.status.repdata')
			with (ClientID Nvarchar(50) ,
				StockID int,
				ID int,
				ST Nvarchar(50),
				[חן נגדי] Nvarchar(50),
				Ref Nvarchar(50),
				Ref2 Nvarchar(50) ,
				CreateDate DateTime ,
				ToPayDate DateTime ,
				OpenSum Nvarchar(50) ,
				[Sum] Nvarchar(50)  )
				where Isnumeric([Sum] ) <>0
		
			   
		
		end 	
			If @DataType = 'Stock'
		begin
		--drop table Web_Collection
		--exec SP_InsertFromJSON @JsonResponse,'Web_Collection'
			truncate table Web_Stock
		--exec SP_InsertFromJSON @JsonResponse,'Web_Products'
		
			insert into Web_Stock
			select *  from OPENJSON(@JsonResponse,'$.status.repdata')
			with (
				ProductID Nvarchar(50),
				InStock Decimal(18,2) )
		
			   
		
		end 	
		If @DataType = 'Details'
		begin
		--drop table Web_Collection
		--exec SP_InsertFromJSON @JsonResponse,'Web_Collection'
			truncate table Web_Details
		--exec SP_InsertFromJSON @JsonResponse,'Web_Products'
		
			insert into Web_Details
			select *  from OPENJSON(@JsonResponse,'$.status.repdata')
			with (
					[ID] [int] ,
					[ProductID] [nvarchar](50) ,
					[Details] [nvarchar](250) ,
					[Quantity] [decimal](18, 2) ,
					[PackQuantity] [decimal](18, 2) ,
					[DocumentID] [int] ,
					[LineNum] [int] ,
					[DocName] [nvarchar](50) ,
					[Status] [nvarchar](50) ,
					[Date] [datetime] ,
					[Docnumber] [int] ,
					[ProductName] [nvarchar](100),
					[ClientID] [nvarchar](100),
					[StockID] [int],
					[Discount] [nvarchar](50),
					[Price] [nvarchar](50))
		
			   
		
		end 	


				If @DataType = 'OpenOrders'
		begin
		--drop table Web_Collection
		--exec SP_InsertFromJSON @JsonResponse,'Web_Collection'
			truncate table Web_OpenOrders
		--exec SP_InsertFromJSON @JsonResponse,'Web_Products'
		
			insert into Web_OpenOrders(DocumentID,[ProductID]  ,[ProductName],[DocName]  ,[DocNumber]  ,[ValueDate]  ,[DueDate]  ,	[ClientID],	[ClientName] ,	[Quantity]  ,[Price] ,	[Total],
			[Unit],[LineNum],[ToWarehouse],[FromWarehouse],[PackQuantity],[OrgQty],[OpenQty],[MoveID]
			)
			select *  from OPENJSON(@JsonResponse,'$.status.repdata')
			with (
					DocumentID [Int],
					[ProductID] [nvarchar](50) ,
					[ProductName] [nvarchar](100),
					[DocName] [nvarchar](50) ,
					[DocNumber] [int] ,
					[ValueDate] [datetime] ,
					[DueDate] [datetime] ,
					[ClientID] [nvarchar](100),
					[ClientName] [nvarchar](100),
					[Quantity] [decimal](18, 2) ,
					[Price] [nvarchar](50),
					[Total] [nvarchar](50),
					[Unit] [nvarchar](50),
					[LineNum] [Int],
					[ToWarehouse] [nvarchar](50),
					[FromWarehouse] [nvarchar](50),
					[PackQuantity] [decimal](18, 2),
					[OrgQty] [decimal](18, 2) ,
					[OpenQty] [decimal](18, 2) ,
					[MoveID] [Int]
					)
		
		   
		
		end 	


		delete from @tbl where DataType = @DataType
END





