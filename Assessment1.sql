CREATE DATABASE OurExerciseDb ON PRIMARY
(NAME = 'Exercise_Db',FILENAME = 'D:\Exercises\Exercise_Db.mdf',
SIZE = 24MB , MAXSIZE = 32MB , FILEGROWTH = 8MB)
LOG ON
(NAME = 'Exercise_log', FILENAME = 'D:\Exercises\Exercise_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb
create table StudentRegistrations
(StudentId int not null,
CourseCode nvarchar(50) not null,
RegistrationDate date,
constraint course_r primary key(StudentId,CourseCode)
)
select * from StudentRegistrations

insert into StudentRegistrations values (1,'CS501','08/06/2023')
insert into StudentRegistrations(StudentId,CourseCode,RegistrationDate) values (2,'CS502','05/02/2021')
insert into StudentRegistrations values (3,'CS503','02/05/2023')
insert into StudentRegistrations values (4,'CS504','05/07/2023')
insert into StudentRegistrations(StudentId,CourseCode,RegistrationDate) values (6,'CS505','04/09/2023')
--drop table StudentRegistrations