CREATE TABLE [dbo].[Class]
(
	[ID] INT CONSTRAINT [PK_Class] PRIMARY KEY IDENTITY NOT NULL, 
    [Name] VARCHAR(255) NOT NULL, 
    [Description] VARCHAR(255) NULL, 
    [StartTime] DATETIMEOFFSET NOT NULL, 
    [EndTime] DATETIMEOFFSET NOT NULL, 
    [Deadline] DATETIMEOFFSET NOT NULL, 
    [AvailableSpots] TINYINT NOT NULL, 
    [IsAvailableForAll] BIT DEFAULT 1 NOT NULL, 
    [RecordCreatedAt] DATETIMEOFFSET CONSTRAINT [DF_Class_RecordCreatedAt] DEFAULT SYSDATETIMEOFFSET() NOT NULL, 
    [RecordUpdatedAt] DATETIMEOFFSET NULL, 
    [ClubID] INT NOT NULL, 
    [ClassTypeID] INT NOT NULL, 
    [CancellationID] INT NULL
);
GO

ALTER TABLE [dbo].[Class]
      ADD CONSTRAINT [FK_Class_ClassTypeID]
      FOREIGN KEY (ClassTypeID)
      REFERENCES [dbo].[ClassType] (ID)
GO

ALTER TABLE [dbo].[Class]
      ADD CONSTRAINT [FK_Class_CancellationID]
      FOREIGN KEY (CancellationID)
      REFERENCES [dbo].[Cancellation] (ID)
GO