USE [sandbox]
GO

insert into Projects (ProjectName) values ('Proj 1');
insert into Projects (ProjectName) values ('Proj 2');

insert into jobs (ProjectId, JobName) values (1, 'Job 1');
insert into jobs (ProjectId, JobName) values (1, 'Job 2');
insert into jobs (ProjectId, JobName) values (2, 'Job 3');

