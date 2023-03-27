-- Execute the script below while the current database is the database that needs to be enabled for replication

-- Enable the database for replication
declare @dbname sysname;
select @dbname = db_name();
exec sp_replicationdboption @dbname, 'publish', 'true';

-- Initialize the MS SQL log reader agent
exec sp_addlogreader_agent; 
