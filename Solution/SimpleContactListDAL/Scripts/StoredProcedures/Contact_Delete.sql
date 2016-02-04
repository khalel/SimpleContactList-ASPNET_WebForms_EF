USE [SimpleContactList]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Contact_Delete]
(
    @Id INT 
)
      
AS
	SET NOCOUNT ON
	
	DELETE FROM [Contact]
	WHERE [ContactId] = @Id
	
	RETURN

GO
