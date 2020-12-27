CREATE TABLE [dbo].[ClassAgeCategory]
(
	[ID] INT NOT NULL CONSTRAINT [PK_ClassAgeCategory] PRIMARY KEY IDENTITY, 
    [ClassID] INT NOT NULL, 
    [AgeCategoryID] INT NOT NULL
)
GO

ALTER TABLE [dbo].[ClassAgeCategory]
      ADD CONSTRAINT [FK_ClassAgeCategory_ClassID]
      FOREIGN KEY (ClassID)
      REFERENCES [dbo].[Class] (ID)
GO

ALTER TABLE [dbo].[ClassAgeCategory]
      ADD CONSTRAINT [FK_ClassAgeCategory_AgeCategoryID]
      FOREIGN KEY (AgeCategoryID)
      REFERENCES [dbo].[AgeCategory] (ID)
GO


