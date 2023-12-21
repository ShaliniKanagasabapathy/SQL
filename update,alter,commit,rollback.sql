#1.	Write a query to add phone number, email id , room no & Location to the patient table.
ALTER TABLE patient
ADD COLUMN phone_number VARCHAR(10),
ADD COLUMN emailid VARCHAR(30),
ADD COLUMN room_no VARCHAR(10),
ADD COLUMN location VARCHAR(30);
desc patient;
ALTER TABLE patient DROP COLUMN room_no;
#2.	Write a query to change the gender datatype from varchar to enum.
ALTER TABLE patient modify column gender enum("male","female");
#3.	Write a query to update a room no to 305 of the patient 5.
UPDATE patient SET roomnumber = 305 WHERE patientid = 5;
select * from patient;
#4.	Write a query to change the diagnosis of a specific patient.
UPDATE patient SET diagnosis="Fractured Leg" WHERE patientid = 5;
#5.	Assign a different "AttendingPhysician" to a patient
UPDATE patient SET attendingphysician=3 WHERE patientid = 5;
#6.	Remove the "email id" column from the "Patient" table
alter table patient drop emailid;
#7.	Write a query to update the gender & phone number of the patient 2.
update patient set gender="female", phone_number="9876543211" where patientid=2;
#8.	Write a query to change the gender of patient 4 then undo the process
START TRANSACTION;
UPDATE patient SET gender = "female" WHERE patientid=4;
ROLLBACK;
#9.	Write a query to promote jane smith (employee id 2) nurse to senior nurse with the salary of 75000
update employee set jobtitle="senior nurse" , salary=75000 where employeeid=2;
select * from employee;
#10.Write a query to save the changes so far.
commit;
#11.Add a new column named "Shift" to the "Employee" table to store the shift information of employees.
alter table employee add column shift varchar(30);
#12.Change the data type of the "Salary" column from DECIMAL(10, 2) to DECIMAL(12, 2) in the "Employee" table to accommodate larger salaries.
alter table employee modify column salary decimal(12,2);
desc employee;
#13.Rename the "Employee" table to "Staff" to better reflect its contents.
ALTER TABLE Employee RENAME TO Staff;
#14.Change the "FirstName" column name to "First_Name" in the "staff" table for consistency.
ALTER TABLE Staff change COLUMN firstname first_name VARCHAR(255);
desc staff;
#15.	Add a default value of 'Active' to the "Status" column in the "Patient" table to indicate the default status of patients.
update Patient SET status='Active';
select * from patient;
ALTER TABLE Patient add column status varchar(50);
