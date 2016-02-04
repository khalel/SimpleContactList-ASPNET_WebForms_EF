USE [SimpleContactList]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_Update]
(
	@Id						INT,
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
	SET NOCOUNT ON
 
	UPDATE [Contact]
	SET 
		[ContactType] = @ContactType,
		[LastName] = @LastName,
		[FirstName] = @FirstName,
		[MiddleName] = @MiddleName,
		[Gender] = @Gender,
		[EmailAddress] = @EmailAddress,
		[Number] = @Number,
		[Address1] = @Address1,
		[Address2] = @Address2,
		[City] = @City,
		[State_Province_County] = @State_Province_County,
		[Country] = @Country,
		[Zipcode] = @Zipcode
	WHERE 
		[ContactId] = @Id
 
	RETURN

GO
