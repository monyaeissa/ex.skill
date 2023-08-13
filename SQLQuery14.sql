sp_help ErrorLog;
SP_HELP BuildVersion;
SP_HELP 'SalesLT.Address';
SP_HELP 'SalesLT.Customer';
SP_HELP 'SalesLT.CustomerAddress';
SP_HELP 'SalesLT.Product';
SP_HELP 'SalesLT.ProductCategory';
SP_HELP 'SalesLT.ProductDescription';
SP_HELP 'SalesLT.ProductModel';
SP_HELP 'SalesLT.ProductModelProductDescription';
SP_HELP 'SalesLT.SalesOrderDetail';
SP_HELP 'SalesLT.SalesOrderHeader';

SELECT
	[LastName],
	[FirstName],
    [CompanyName],
    [Phone]
FROM
    [AdventureWorksLT2019].[SalesLT].[Customer]
ORDER BY
    [LastName]


CREATE PROCEDURE AddProduct
(
ProductID INT,
ProductName VARCHAR(100),
Color NVARCHAR(30),
StandardCost money(8),
ListPrice money(8),
Size NVARCHAR(10),
Weight decimal(5),
ProductCategoryID,
ProductModelID ,
SellStartDate,
SellEndDate,
DiscontinuedDate,
ThumbNailPhoto,
ThumbnailPhotoFileName,
rowguid,
ModifiedDate,
)
AS
BEGIN
    INSERT INTO AdventureWorksLT2019.Sales.Product (ProductID, ProductName, ProductDescription, ProductPrice)
    VALUES ([ProductID], [ProductName], [ProductDescription], [ProductPrice]);
END

CREATE PROCEDURE Add_Product(
[ProductName] ,
[Color] ,
[StandardCost] ,
[ListPrice],
[Size] ,
[Weight],
[ProductCategoryID],
[ProductModelID] ,
[SellStartDate],
[SellEndDate],
[DiscontinuedDate],
[ThumbNailPhoto],
[ThumbnailPhotoFileName],
[rowguid],
[ModifiedDate],
)
AS
BEGIN
    INSERT INTO [AdventureWorksLT2019].[SalesLT].[Product] (
[ProductName] ,
[Color] ,
[StandardCost] ,
[ListPrice],
[Size] ,
[Weight],
[ProductCategoryID],
[ProductModelID] ,
[SellStartDate],
[SellEndDate],
[DiscontinuedDate],
[ThumbNailPhoto],
[ThumbnailPhotoFileName],
[rowguid],
[ModifiedDate],
	)
    VALUES ([ProductID], [ProductName], [ProductDescription], [ProductPrice]);
END


CREATE PROCEDURE Product_Adding 
    @Name nvarchar(50),
    @ProductNumber nvarchar(25),
    @Color nvarchar(15),
    @StandardCost money,
    @ListPrice money,
    @Size nvarchar(10),
    @Weight decimal(8,2),
    @ProductCategoryID int,
    @ProductModelID int,
	@SellStartDate  datetime,
	@SellEndDate	datetime,
    @DiscontinuedDate	datetime,
	@ThumbNailPhoto varbinary,
    @ThumbnailPhotoFileName nvarchar,
	@rowguid	uniqueidentifier,
    @ModifiedDate	datetime

AS
BEGIN
    INSERT INTO SalesLT.Product ([Name], [ProductNumber], [Color], StandardCost, ListPrice, Size, [Weight], ProductCategoryID, ProductModelID,SellStartDate,SellEndDate,DiscontinuedDate, ThumbNailPhoto,ThumbnailPhotoFileName,rowguid,ModifiedDate)
    VALUES (@Name, @ProductNumber, @Color, @StandardCost, @ListPrice, @Size, @Weight, @ProductCategoryID, @ProductModelID,@SellStartDate,@SellEndDate,@DiscontinuedDate,@ThumbNailPhoto,@ThumbnailPhotoFileName,@rowguid,@ModifiedDate)
END
EXEC Product_Adding'Game',56,'blue', 10,50,3,5,18,6,3,null,null,6,5,[],2;
 
 Select * From [SalesLT].[Product];

