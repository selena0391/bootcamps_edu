drop table IF EXISTS Program_Skill;
drop table IF EXISTS Program_Date;
drop table IF EXISTS Program_Location;
drop table IF EXISTS School;
drop table IF EXISTS Program;
drop table IF EXISTS Location;
drop table IF EXISTS State;
drop table IF EXISTS Skill;


create table School
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	school_name varchar(50) not null
);

create table Program
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	program_name varchar(50) not null
);

create table State
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	name varchar(50) not null
);

create table Location
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	name varchar(50) not null,
	state_id int not null REFERENCES State (id)
);


create table Program_Location
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	program_id int not null REFERENCES Program (id),
	location_id int not null REFERENCES Location (id)
);

create table Program_Date
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	program_location_id int not null REFERENCES Program_Location (id),
	start_date date not null,
	end_date date not null,
	graduation_rate decimal not null,
	median_salary_180days decimal not null
);

create table Skill
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	skill varchar(50) not null
);

create table Program_Skill
(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	program_date_id int not null REFERENCES Program_Date (id),
	skill_id int not null REFERENCES Skill (id)
)
