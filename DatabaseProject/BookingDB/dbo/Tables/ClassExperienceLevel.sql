CREATE TABLE [dbo].[ClassExperienceLevel]
(
	[ID] INT NOT NULL CONSTRAINT [PK_ClassExperienceLevel] PRIMARY KEY IDENTITY, 
    [ClassID] INT NOT NULL, 
    [ExperienceLevelID] INT NOT NULL
)
GO

ALTER TABLE [dbo].[ClassExperienceLevel]
      ADD CONSTRAINT [FK_ClassExperienceLevel_ClassID]
      FOREIGN KEY (ClassID)
      REFERENCES [dbo].[Class] (ID)
GO

ALTER TABLE [dbo].[ClassExperienceLevel]
      ADD CONSTRAINT [FK_ClassExperienceLevel_ExperienceLevelID]
      FOREIGN KEY (ExperienceLevelID)
      REFERENCES [dbo].[ExperienceLevel] (ID)
GO
