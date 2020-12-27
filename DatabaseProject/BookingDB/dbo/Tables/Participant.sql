CREATE TABLE [dbo].[Participant]
(
	[ID] INT NOT NULL CONSTRAINT [PK_Participant] PRIMARY KEY IDENTITY, 
    [FirstName] VARCHAR(255) NOT NULL, 
    [LastName] VARCHAR(255) NOT NULL, 
    [EmailAddress] VARCHAR(255) NULL, 
    [PhoneNumber] VARCHAR(255) NULL, 
    [IsGuest] BIT NOT NULL, 
    [RecordCreatedAt] DATETIMEOFFSET NOT NULL CONSTRAINT [DF_Participant_RecordCreatedAt] DEFAULT SYSDATETIMEOFFSET(), 
    [RecordUpdatedAt] DATETIMEOFFSET NULL, 
    [BookingID] INT NOT NULL, 
    [SpotID] INT NOT NULL, 
    [EngagementID] INT NOT NULL
)
GO

ALTER TABLE [dbo].[Participant]
      ADD CONSTRAINT [FK_Participant_BookingID]
      FOREIGN KEY (BookingID)
      REFERENCES [dbo].[Booking] (ID)
GO

ALTER TABLE [dbo].[Participant]
      ADD CONSTRAINT [FK_Participant_SpotID]
      FOREIGN KEY (SpotID)
      REFERENCES [dbo].[Spot] (ID)
GO

ALTER TABLE [dbo].[Participant]
      ADD CONSTRAINT [FK_Participant_EngagementID]
      FOREIGN KEY (EngagementID)
      REFERENCES [dbo].[Engagement] (ID)
GO