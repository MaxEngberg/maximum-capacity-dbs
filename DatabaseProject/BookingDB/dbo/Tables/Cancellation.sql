CREATE TABLE [dbo].[Cancellation]
(
	[ID] INT NOT NULL CONSTRAINT [PK_Cancellation] PRIMARY KEY IDENTITY, 
    [Note] VARCHAR(255) NOT NULL, 
    [CancelledBy] VARCHAR(100) NULL, 
    [CancellationTime] DATETIMEOFFSET NOT NULL CONSTRAINT [DF_Cancellation_CancellationTime] DEFAULT SYSDATETIMEOFFSET(), 
    [RecordUpdatedAt] DATETIMEOFFSET NULL
)
