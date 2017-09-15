USE [JobServerDB]
GO

/****** Object:  Table [dbo].[JobExecuteLog]    Script Date: 2017/4/12 14:54:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[JobExecuteLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JobID] [int] NOT NULL,
	[ExecuteTime] [datetime] NOT NULL CONSTRAINT [DF_JobExecuteLog_ExecuteTime]  DEFAULT (getdate()),
	[Success] [int] NOT NULL CONSTRAINT [DF_JobExecuteLog_Success]  DEFAULT ((0)),
 CONSTRAINT [PK_JobExecuteLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobExecuteLog', @level2type=N'COLUMN',@level2name=N'JobID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务执行记录日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobExecuteLog'
GO


