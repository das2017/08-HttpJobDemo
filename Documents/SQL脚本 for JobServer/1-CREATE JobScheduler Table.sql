USE [JobServerDB]
GO

/****** Object:  Table [dbo].[JobScheduler]    Script Date: 2017/4/12 14:55:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[JobScheduler](
	[JobSchedulerID] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [varchar](100) NOT NULL,
	[GroupName] [varchar](100) NOT NULL CONSTRAINT [DF__JobSchedu__Group__3F9B6DFF]  DEFAULT ('DefaultGroup'),
	[RequestURL] [varchar](500) NULL,
	[RequestType] [int] NOT NULL CONSTRAINT [DF__JobSchedu__Reque__408F9238]  DEFAULT ((0)),
	[JobDescription] [nvarchar](200) NULL CONSTRAINT [DF__JobSchedu__JobDe__4183B671]  DEFAULT (''),
	[StartTime] [datetime] NOT NULL CONSTRAINT [DF__JobSchedu__Start__4277DAAA]  DEFAULT (getdate()),
	[TriggerType] [int] NOT NULL CONSTRAINT [DF__JobSchedu__Trigg__436BFEE3]  DEFAULT ((0)),
	[RepeatCount] [int] NOT NULL CONSTRAINT [DF__JobSchedu__Repea__4460231C]  DEFAULT ((-1)),
	[RepeatInterval] [int] NOT NULL CONSTRAINT [DF__JobSchedu__Repea__45544755]  DEFAULT ((0)),
	[CronExpression] [varchar](200) NULL,
	[JobStatus] [int] NOT NULL CONSTRAINT [DF__JobSchedu__JobSt__46486B8E]  DEFAULT ((0)),
	[AddTime] [datetime] NOT NULL CONSTRAINT [DF__JobSchedu__AddTi__473C8FC7]  DEFAULT (getdate()),
	[RequestBodyJSON] [varchar](max) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_JobScheduler] PRIMARY KEY CLUSTERED 
(
	[JobSchedulerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Job名称，必须唯一' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'JobName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'GroupName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求地址，完成的URL地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'RequestURL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求类型：0-GET,1-POST,2-HEAD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'RequestType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Job描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'JobDescription'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'StartTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trigger类型，0：SimpleTrigger，1：CronTrigger' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'TriggerType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SimpleTrigger重复执行次数，-1表示无限次，其他正整数表示具体重复的次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'RepeatCount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SimpleTrigger重复执行间隔时间，单位：秒' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'RepeatInterval'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cron表达式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'CronExpression'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:开启，1：暂停' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'JobStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'AddTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'POST请求包（JSON格式）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler', @level2type=N'COLUMN',@level2name=N'RequestBodyJSON'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务计划表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobScheduler'
GO


