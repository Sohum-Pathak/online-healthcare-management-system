































































































create database healthcare_management_system;
use healthcare_management_system;

create table login(ID varchar(20), PW varchar(20));
select*from login;

insert into login value("falcons","12345678");

create Table patient_info(ID varchar(20),Number varchar(40),Name varchar(20),Gender varchar(20), Patient_Disease varchar(20),Room_Number varchar(20),Time varchar(100),Deposite varchar(100));
select*from patient_info;

create Table Room(room_no varchar(20),Availibility varchar(20), Price varchar(20), Room_Type varchar(100));
select*from room;

Insert into Room values("100","Availible","500","G Bed 1");
Insert into Room values("101","Availible","500","G Bed 2");
Insert into Room values("102","Availible","500","G Bed 3");
Insert into Room values("103","Availible","500","G Bed 4");
Insert into Room values("200","Availible","5000","Private Room");
Insert into Room values("201","Availible","5000","Private Room");
Insert into Room values("202","Availible","5000","Private Room");
Insert into Room values("203","Availible","5000","Private Room");
Insert into Room values("300","Availible","3500","ICU Bed 1");
Insert into Room values("301","Availible","3500","ICU Bed 2");
Insert into Room values("302","Availible","3500","ICU Bed 3");
Insert into Room values("303","Availible","3500","ICU Bed 4");
Insert into Room values("304","Availible","3500","ICU Bed 5");
Insert into Room values("305","Availible","3500","ICU Bed 6");
