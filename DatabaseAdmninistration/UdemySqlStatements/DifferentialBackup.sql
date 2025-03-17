Differential Backup database command
BACKUP DATABASE AdventureWorks TO DISK = 'C:\Temp\DatabaseBackups\AdventureWorks_Full.bak'
BACKUP DATABASE AdventureWorks TO DISK = 'C:\Temp\DatabaseBackups\AdventureWorks_Diff_1.bak' WITH DIFFERENTIAL
BACKUP DATABASE AdventureWorks TO DISK = 'C:\Temp\DatabaseBackups\AdventureWorks_Diff_2.bak' WITH DIFFERENTIAL
