CREATE TABLE [dbo].[Engagement]
(
	[ID] INT NOT NULL CONSTRAINT [PK_Engagement] PRIMARY KEY IDENTITY, 
    [Amount] DECIMAL(5) NOT NULL, 
    [PaidDate] DATETIMEOFFSET NULL, 
    [ReversedDate] DATETIMEOFFSET NULL, 
    [PartialPaidDate] DATETIMEOFFSET NULL, 
    [PartialPaidAmount] DECIMAL(5) NULL, 
    [RecordCreatedAt] DATETIMEOFFSET NOT NULL CONSTRAINT [DF_Engagement_RecordCreatedAt] DEFAULT SYSDATETIMEOFFSET(), 
    [RecordUpdatedAt] DATETIMEOFFSET NULL
)
