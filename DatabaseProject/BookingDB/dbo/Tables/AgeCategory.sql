﻿CREATE TABLE [dbo].[AgeCategory]
(
	[ID] INT NOT NULL CONSTRAINT [PK_AgeCategory] PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(255) NOT NULL, 
    [LowerAge] SMALLINT NULL, 
    [UpperAge] SMALLINT NULL, 
    [RecordCreatedAt] DATETIMEOFFSET NOT NULL CONSTRAINT [DF_AgeCategory_RecordCreatedAt] DEFAULT SYSDATETIMEOFFSET(), 
    [RecordUpdaedAt] DATETIMEOFFSET NULL, 
    [ClubID] INT NOT NULL,
)
