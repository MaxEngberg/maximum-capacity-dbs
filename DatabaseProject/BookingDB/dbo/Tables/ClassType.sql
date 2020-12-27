CREATE TABLE [dbo].[ClassType]
(
	[ID] INT NOT NULL CONSTRAINT [PK_ClassTpe] PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(100) NOT NULL, 
    [ClassMainTypeID] INT NULL
)
GO

ALTER TABLE [dbo].[ClassType]
      ADD CONSTRAINT [FK_ClassType_ClassMainTypeID]
      FOREIGN KEY (ClassMainTypeID)
      REFERENCES [dbo].[ClassMainType] (ID)
GO