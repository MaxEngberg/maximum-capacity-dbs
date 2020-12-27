﻿CREATE TABLE [dbo].[Price]
(
	[ID] INT NOT NULL CONSTRAINT [PK_Price] PRIMARY KEY IDENTITY, 
    [Price] DECIMAL(5, 0) NOT NULL, 
    [ValidFrom] DATETIMEOFFSET NULL, 
    [ValidTo] DATETIMEOFFSET NULL, 
    [RecordCreatedAt] DATETIMEOFFSET NULL CONSTRAINT [DF_Price_RecordCreatedAt] DEFAULT SYSDATETIMEOFFSET(), 
    [RecordUpdatedAt] DATETIMEOFFSET NOT NULL, 
    [ClassID] INT NOT NULL
)
GO

ALTER TABLE [dbo].[Price]
	ADD CONSTRAINT [FK_Price_ClassID]
	FOREIGN KEY (ClassID)
	REFERENCES [dbo].[Class] (ID)
GO