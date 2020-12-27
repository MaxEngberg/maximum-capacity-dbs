CREATE TABLE [dbo].[BookingHistory]
(
	[ID] INT NOT NULL CONSTRAINT [PK_BookingHistory] PRIMARY KEY IDENTITY, 
    [Action] VARCHAR(50) NOT NULL, 
    [BookingID] INT NOT NULL, 
    [ParticipantID] INT NOT NULL, 
    [RecordCreatedAt] DATETIMEOFFSET NOT NULL CONSTRAINT [DF_BookingHistory_RecordCreatedAt] DEFAULT SYSDATETIMEOFFSET()
)
GO

ALTER TABLE [dbo].[BookingHistory]
      ADD CONSTRAINT [FK_BookingHistory_BookingID]
      FOREIGN KEY (BookingID)
      REFERENCES [dbo].[Booking] (ID)
GO

ALTER TABLE [dbo].[BookingHistory]
      ADD CONSTRAINT [FK_BookingHistory_ParticipantID]
      FOREIGN KEY (ParticipantID)
      REFERENCES [dbo].[Participant] (ID)
GO

