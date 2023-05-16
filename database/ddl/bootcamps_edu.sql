DROP SCHEMA IF EXISTS bootcamps_edu CASCADE;
CREATE SCHEMA bootcamps_edu;

drop table IF EXISTS bootcamps_edu.Program_Skill;
drop table IF EXISTS bootcamps_edu.Program_Date;
drop table IF EXISTS bootcamps_edu.Program_Location;
drop table IF EXISTS bootcamps_edu.School;
drop table IF EXISTS bootcamps_edu.Program;
drop table IF EXISTS bootcamps_edu.Location;
drop table IF EXISTS bootcamps_edu.State;
drop table IF EXISTS bootcamps_edu.Skill;

create table bootcamps_edu.School
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	school_name varchar(50) not null
);

create table bootcamps_edu.Program
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	program_name varchar(50) not null
);

create table bootcamps_edu.State
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	name varchar(50) not null
);

create table bootcamps_edu.Location
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	name varchar(50) not null,
	state_id int not null REFERENCES bootcamps_edu.State (id)
);


create table bootcamps_edu.School_Program_Location
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	school_id int not null REFERENCES bootcamps_edu.School (id),
	program_id int not null REFERENCES bootcamps_edu.Program (id),
	location_id int not null REFERENCES bootcamps_edu.Location (id)
);

create table bootcamps_edu.Program_Date
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	school_program_location_id int not null REFERENCES bootcamps_edu.School_Program_Location (id),
	start_date date not null,
	end_date date not null,
	graduation_rate decimal not null,
	median_salary_180days decimal not null
);

create table bootcamps_edu.Skill
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	skill varchar(50) not null
);

create table bootcamps_edu.Program_Skill
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	school_program_date_id int not null REFERENCES bootcamps_edu.Program_Date (id),
	skill_id int not null REFERENCES bootcamps_edu.Skill (id)
);


GRANT ALL PRIVILEGES ON all tables in SCHEMA bootcamps_edu TO postgres;

