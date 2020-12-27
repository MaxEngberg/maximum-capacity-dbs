﻿CREATE TABLE [dbo].[Spot]
(
	[ID] INT NOT NULL CONSTRAINT [PK_Spot] PRIMARY KEY IDENTITY, 
    [Number] INT NOT NULL, 
    [IsTaken] BIT NOT NULL CONSTRAINT [DF_Spot_IsTaken] DEFAULT 0, 
    [ReferenceNumber] VARCHAR(6) NOT NULL, 
    [RecordCreatedAt] DATETIMEOFFSET NOT NULL CONSTRAINT [DF_Spot_RecordCreatedAt] DEFAULT SYSDATETIMEOFFSET(), 
    [RecordUpdatedAt] DATETIMEOFFSET NULL, 
    [ClassID] INT NOT NULL
)
GO

ALTER TABLE [dbo].[Spot]
      ADD CONSTRAINT [FK_Spot_ClassID]
      FOREIGN KEY (ClassID)
      REFERENCES [dbo].[Class] (ID)
GO