USE [sandbox]
GO

/****** Object:  Table [dbo].[Jobs]    Script Date: 2014/6/24 22:37:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Jobs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NULL,
	[JobName] [nchar](100) NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Projects] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([id])
GO

ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Projects]
GO

