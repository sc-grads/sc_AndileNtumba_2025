BACKUP DATABASE [master] TO DISK = N'C:\SQL_BACKUPS\master_backup_test.bak' WITH NOFORMAT, NOINIT, NAME = N'master-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, STATS = 10
GO

restore database master from disk = 'C:\SQL_BACKUPS\master_backup_test.bak' with replace;

dbcc checkdb


restore database master_recovery from disk = 'C:\SQL_BACKUPS\master_backup_test.bak' with
move 'master' to 'C:\master_recovery.mdf',
move 'mastlog to 'C:\mastlog_recovery.Idf';

USE [master]
GO
EXEC master .dbo.sp_detach_db @dbname = N'master_recovery'
GO
