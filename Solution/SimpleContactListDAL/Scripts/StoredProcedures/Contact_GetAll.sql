USE [SimpleContactList]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_GetAll]
AS
	SET NOCOUNT ON
 
	SELECT [ContactId], [ContactType], [LastName], [FirstName], [MiddleName], [Gender], [EmailAddress], [Number], [Address1], [Address2], [City], [State_Province_County], [Country], [Zipcode], [Created]
	FROM [Contact]
 
	RETURN

GO
