USE [SimpleContactList]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_Insert]
(
	@ContactType			NVARCHAR (30),
    @LastName				NVARCHAR (40),
    @FirstName				NVARCHAR (40),
    @MiddleName				NVARCHAR (40),
    @Gender					NVARCHAR (10),
    @EmailAddress			NVARCHAR (200),
    @Number					NVARCHAR (50),
    @Address1				NVARCHAR (MAX),
    @Address2				NVARCHAR (MAX),
    @City					NVARCHAR (100),
    @State_Province_County	NVARCHAR (100),
    @Country				NVARCHAR (100),
    @Zipcode				NVARCHAR (20)
)
AS
	INSERT INTO [Contact] ([ContactType], [LastName], [FirstName], [MiddleName], [Gender], [EmailAddress], [Number], [Address1], [Address2], [City], [State_Province_County], [Country], [Zipcode])
	VALUES (@ContactType, @LastName, @FirstName, @MiddleName, @Gender, @EmailAddress, @Number, @Address1, @Address2, @City, @State_Province_County, @Country, @Zipcode)

	SELECT CAST(SCOPE_IDENTITY() AS INT) AS Id

GO
