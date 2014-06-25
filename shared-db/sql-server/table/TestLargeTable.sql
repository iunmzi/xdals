USE [sandbox]
GO

/****** Object:  Table [dbo].[TestLargeTable]    Script Date: 2014/6/24 22:54:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TestLargeTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TestCol1] [nchar](100) NULL,
	[TestCol2] [nchar](100) NULL,
 CONSTRAINT [PK_TestLargeTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

