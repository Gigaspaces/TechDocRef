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
 
declare @user sysname;
select @user = N'gsiidr';
exec (N'use master; grant view server state to [' + @user + N']')
exec (N'use master; grant alter any linked server to [' + @user + N']')
GO

-- Only required for a trusted database
declare @user sysname;
select @user = N'gsiidr';
exec (N'use iidrtrusted; grant execute on dbo.dbccdbtable_v1 to [' + @user + N']')
exec (N'use iidrtrusted; grant execute on dbo.replicationdboption_v1 to [' + @user + N']')
exec (N'use iidrtrusted; grant execute on dbo.addpublication_v1 to [' + @user + N']')
exec (N'use iidrtrusted; grant execute on dbo.dbccloginfo_v1 to [' + @user + N']')
GO

-- Only required for a local distribution database
declare @user sysname;
select @user = N'gsiidr';
declare @distribution sysname;
select @distribution = N'distribution';
exec (N'use [' + @distribution + N']; grant select on dbo.MSpublications to [' + @user + N']')
exec (N'use [' + @distribution + N']; grant select on dbo.MSsubscriptions to [' + @user + N']')
exec (N'use [' + @distribution + N']; grant update on dbo.MSsubscriptions to [' + @user + N']')
GO
