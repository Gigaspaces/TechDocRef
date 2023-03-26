
/* _______________________________________________________ {COPYRIGHT-TOP} _____
** Licensed Materials - Property of IBM 
** IBM InfoSphere Change Data Capture
** 5724-U70
** 
** (c) Copyright IBM Corp. 2001, 2018 All rights reserved.
** 
** The following sample of source code ("Sample") is owned by International 
** Business Machines Corporation or one of its subsidiaries ("IBM") and is 
** copyrighted and licensed, not sold. You may use, copy, modify, and 
** distribute the Sample in any form without payment to IBM.
** 
** The Sample code is provided to you on an "AS IS" basis, without warranty of 
** any kind. IBM HEREBY EXPRESSLY DISCLAIMS ALL WARRANTIES, EITHER EXPRESS OR 
** IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
** MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Some jurisdictions do 
** not allow for the exclusion or limitation of implied warranties, so the above 
** limitations or exclusions may not apply to you. IBM shall not be liable for 
** any damages you suffer as a result of using, copying, modifying or 
** distributing the Sample, even if IBM has been advised of the possibility of 
** such damages.
 * ________________________________________________________ {COPYRIGHT-END} _____*/

-- Execute the script below while the current database is the database that needs to be enabled for replication

-- Enable the database for replication
declare @dbname sysname;
select @dbname = db_name();
exec sp_replicationdboption @dbname, 'publish', 'true';

-- Initialize the MS SQL log reader agent
exec sp_addlogreader_agent; 
