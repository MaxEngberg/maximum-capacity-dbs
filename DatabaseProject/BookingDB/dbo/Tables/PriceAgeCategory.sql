CREATE TABLE [dbo].[PriceAgeCategory]
(
	[ID] INT NOT NULL CONSTRAINT [PriceAgeCategory_PK] PRIMARY KEY IDENTITY, 
    [PriceID] INT NOT NULL, 
    [AgeCategoryID] INT NOT NULL
)
GO

ALTER TABLE [dbo].[PriceAgeCategory]
      ADD CONSTRAINT [FK_PriceAgeCategory_PriceID]
      FOREIGN KEY (PriceID)
      REFERENCES [dbo].[Price] (ID)
GO

ALTER TABLE [dbo].[PriceAgeCategory]
      ADD CONSTRAINT [FK_PriceAgeCategory_AgeCategoryID]
      FOREIGN KEY (AgeCategoryID)
      REFERENCES [dbo].[AgeCategory] (ID)
GO
