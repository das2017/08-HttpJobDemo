USE [JobServerDB]
GO

DELETE FROM dbo.JobScheduler

INSERT 
INTO dbo.JobScheduler (
JobName, 
GroupName, 
RequestURL, 
RequestType, 
JobDescription, 
StartTime,
TriggerType, 
RepeatCount, 
RepeatInterval, 
CronExpression, 
JobStatus, 
RequestBodyJSON
) VALUES(
'ArchDemoJob1', 
'ArchJobDemo', 
'http://localhost:10786/WebForm1.aspx', 
2, 
'每隔90秒被HEAD请求一次', 
GETDATE(),
0, 
-1, 
90, 
NULL, 
0, 
''
)

INSERT 
INTO dbo.JobScheduler (
JobName, 
GroupName, 
RequestURL, 
RequestType, 
JobDescription, 
StartTime,
TriggerType, 
RepeatCount, 
RepeatInterval, 
CronExpression, 
JobStatus, 
RequestBodyJSON
) VALUES(
'ArchDemoJob2', 
'ArchJobDemo', 
'http://localhost:10786/WebForm1.aspx', 
1, 
'每隔2秒被POST请求一次', 
GETDATE(),
1, 
-1, 
0, 
'0 0/2 * * * ?', 
0, 
''
)
