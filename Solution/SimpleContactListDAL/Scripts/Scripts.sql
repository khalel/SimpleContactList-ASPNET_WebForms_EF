USE master
GO

IF EXISTS(select * from sys.databases where name='SimpleContactList')
	DROP DATABASE SimpleContactList
GO

CREATE DATABASE SimpleContactList
GO

USE SimpleContactList
GO

--IF OBJECT_ID(N'dbo.Contact', N'U') IS NOT NULL
--BEGIN
--    PRINT 'Table Exists'
--	DROP TABLE [dbo].[Contact]
--END

CREATE TABLE [dbo].[Contact] (
    [ContactId]             INT            IDENTITY (1, 1) NOT NULL,
    [ContactType]           NVARCHAR (30)  NOT NULL,
    [LastName]              NVARCHAR (40)  NOT NULL,
    [FirstName]             NVARCHAR (40)  NOT NULL,
    [MiddleName]            NVARCHAR (40)  NULL,
    [Gender]                NVARCHAR (10)  NOT NULL,
    [EmailAddress]          NVARCHAR (200) NULL,
    [Number]                NVARCHAR (50)  NULL,
    [Address1]              NVARCHAR (MAX) NULL,
    [Address2]              NVARCHAR (MAX) NULL,
    [City]                  NVARCHAR (100) NULL,
    [State_Province_County] NVARCHAR (100) NULL,
    [Country]               NVARCHAR (100) NULL,
    [Zipcode]               NVARCHAR (20)  NULL,
    [Created]               ROWVERSION     NOT NULL,
    CONSTRAINT [PK_dbo.Contact] PRIMARY KEY CLUSTERED ([ContactId] ASC)
);
