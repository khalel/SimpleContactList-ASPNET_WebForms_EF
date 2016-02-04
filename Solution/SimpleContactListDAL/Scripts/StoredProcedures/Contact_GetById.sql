USE [SimpleContactList]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_GetById]
(
	@Id INT 
)
AS
	SET NOCOUNT ON 
 
	SELECT [ContactId], [ContactType], [LastName], [FirstName], [MiddleName], [Gender], [EmailAddress], [Number], [Address1], [Address2], [City], [State_Province_County], [Country], [Zipcode], [Created]
	FROM [Contact]
	WHERE [ContactId] = @Id
 
	RETURN

GO
