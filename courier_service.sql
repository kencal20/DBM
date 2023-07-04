CREATE TABLE VehicleType (
VehicleType_ID INT PRIMARY KEY,
VehicleType_Name VARCHAR(60) unique

);

INSERT INTO  VehicleType( VehicleType_ID,VehicleType_Name)
VALUES( 001,'TOYOTA'),
	  ( 002,'SUZUKI'),
	  ( 003,'BMW')

SELECT * FROM VehicleType;

CREATE TABLE TypeOfSecurity(
TypeOfSecurity_ID INT PRIMARY KEY,
TypeOfSecurity_Name VARCHAR(30) unique,
Amount_charged VARCHAR(7)
);



INSERT INTO TypeOfSecurity(TypeOfSecurity_ID,TypeOfSecurity_Name)
 VALUES(001,'Military'),
       (002,'Police'),
       (003,'Private Security');
SELECT * FROM TypeOfSecurity

CREATE TABLE Driver(
Driver_ID INT PRIMARY KEY,
Driver_Name VARCHAR(60),
Gender VARCHAR(10)CHECK(Gender in('Male','Female','male','female')),
Educational_level VARCHAR(10),
Salary INT,
Lincence_number VARCHAR(20),
Lincence_Type CHAR,
Security_clearance VARCHAR(20),
Physical_Disability VARCHAR(30),
DateOfBirth DATE
);

CREATE TABLE TypeOfService(
TypeOfService_ID VARCHAR(11),
TypeOfService_Name VARCHAR(10),
);

SELECT * FROM TypeOfService

CREATE TABLE Client(
Client_ID INT PRIMARY KEY,
Client_Name VARCHAR(60),
Client_Address VARCHAR(60),
Contact_Details VARCHAR(60),
);

CREATE TABLE SecurityPersonnel(
Personnel_ID VARCHAR(7) PRIMARY KEY,
Personnel_Name VARCHAR(40),
DateOfBirth DATE,
Gender VARCHAR(10)CHECK(Gender in('Male','Female','male','female')),
TypeOfsecurity_ID INT, 
Ghana_card VARCHAR(30),
Personnel_Rank VARCHAR(30),
FOREIGN KEY (TypeOfSecurity_ID) REFERENCES TypeOfSecurity(TypeOfSecurity_ID)
);
INSERT INTO SecurityPersonnel
VALUES('P001','ADJETEY','2021-01-01','male',001,'GH-702-23-23','Sergent'),
	  ('P002','ADJEI','2021-02-12','male',003,'GH-934-10-23','private'),
	  ('P003','SAMPSON','2021-01-01','male',002,'GH-202-93-23','captain'),
	  ('P004','KIERIN','2021-01-01','male',003,'GH-342-83-23','private'),
	  ('P005','ADOMBIA','2021-01-01','male',002,'GH-552-63-23','Sergent'),
	  ('P006','AMON','2021-01-01','male',002,'GH-892-43-23','captain'),
	  ('P007','KANE','2021-01-01','male',001,'GH-462-36-23','Corporal'),
	  ('P008','JEREMY','2021-01-01','male',003,'GH-782-03-23','private'),
	  ('P009','CALEB','2021-01-01','male',003,'GH-112-77-23','private'),
	  ('P010','ANDY','2021-01-01','male',003,'GH-002-51-23','private');

SELECT * FROM SecurityPersonnel


CREATE TABLE Vehicle(
Vehicle_ID INT,
VehicleType_ID INT,
Model VARCHAR(20),
Brand VARCHAR(20),
Registration_Number VARCHAR(20),
Fuel_comsumption VARCHAR(10),
Carriage_Capacity VARCHAR(10),
Date_Purchased DATE,
Chasis_Number VARCHAR(20),
Date_Imported DATE,
FOREIGN KEY (VehicleType_ID) REFERENCES VehicleType(VehicleType_ID),
CONSTRAINT vID_REGNO PRIMARY KEY (Vehicle_ID,Registration_Number)
);


CREATE TABLE RequestForService(
Client_ID INT,
RequestForService_ID INT PRIMARY KEY,
TypeOfSecurity_ID INT,
Date_ServiceRequested DATE,
Date_ToExecuteService DATE,
PickUp_Location VARCHAR(30)
);

CREATE TABLE Trip( 
Trip_ID INT PRIMARY KEY,
RequestForService_ID INT,
Driver_ID INT,
Vehicle_ID INT,
Personnel_ID VARCHAR(7),
Registration_Number VARCHAR(20),
Start_DateAndTimeOfTrip DATE,
);
SELECT s.Personnel_Name,t.TypeOfSecurity_Name
FROM SecurityPersonnel s join TypeOfSecurity t
on (s.TypeOfsecurity_ID = t.TypeOfSecurity_ID)

CREATE TABLE staff(
sid VARCHAR(5) PRIMARY KEY,
name VARcHAR(20),
mid VARCHAR(5) REFERENCES staff(sid)
)

INSERT INTO staff values ('S001','Aggie','S001' );
INSERT INTO staff values ('S002','Aggie',null );
INSERT INTO staff values ('S003','Aggie','S001' );
INSERT INTO staff values ('S004','Aggie','S001' );
INSERT INTO staff values ('S005','Aggie','S002' );

