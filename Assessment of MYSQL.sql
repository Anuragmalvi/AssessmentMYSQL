create database assessment;
create table Worker
(Worker_id int primary key,
First_name varchar(20),
Last_name varchar(20),
Salary bigint,
Joining_date text,
Department varchar(55));
drop table Worker;
Insert  into Worker ( Worker_id, First_name, Last_name, Salary, Joining_date, Department)
Values 	( 1, 'Monika', 'Arora', 100000, '2/20/2014 9:00:00', 'HR'),
		( 2, 'Niharika', 'Verma', 80000, '6/11/2014 9:00:00','Admin'),
        (3, 'Vishal', 'Singhal', 300000, '2/20/2014 9:00:00', 'HR'),
		(4, 'Amitabh', 'Singh', 500000, '2/20/2014 9:00:00', 'Admin'),
		(5, 'Vivek', 'Bhati', 500000, '6/11/2014 9:00:00', 'Admin'),
		(6, 'Vipul', 'Diwan', 200000, '6/11/2014 9:00:00', 'Account'),
		(7, 'Satish', 'Kumar', 75000, '1/20/2014 9:00:00', 'Account'),
        (8, 'Geetika', 'Chauhan', 90000, '4/11/2014 9:00:00', 'Admin');
	
    select * from worker;
    
 --   1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
-- Ascending and DEPARTMENT Descending.
				select *from worker order by First_name asc , Department desc;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
-- from the Worker table.
				select * from worker where first_name in ('Vipul', 'Satish');
-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
-- contains six alphabets.
				select * from worker where first_name like '_____h';
-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 10000-100000
				select* from worker where salary between 10000 and 100000;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
				select worker_id, salary, joining_date, department, count(*) from worker group by worker_id, salary, joining_date, department having count(*)>1;
                

-- 6. Write an SQL query to show the top 6 records of a table.
				select* from worker order by salary desc limit 6 ;
                
-- 7. Write an SQL query to fetch the departments that have less than five people in them.
				select* from worker where department='HR'<5 and department='Admin'<5 and department='Account'<5;
                
-- 8. Write an SQL query to show all departments along with the number of people in there.
				select count(worker_id) as 'No of Employeees', Department from worker group by department;
                
-- 9. Write an SQL query to print the name of employees having the highest salary in each
-- department.  
				select first_name, last_name, salary, department from worker where salary in(select max(salary) from worker group by department);
                
                
                
                
                
		-- Question 2
        create table student
        ( StdID int primary key, StdName varchar(55), Sex varchar(20), Percentage int, Class int, Sec varchar(5), Stream varchar (20), DOB text);
        
        insert into student (StdID, StdName, Sex, Percentage, Class, Sec, Stream, DOB)
        values 	( 1001, 'Surekha Joshi', 'Female', 82, 12, 'A', 'Science', '3/8/1998'),
				( 1002, 'MAAHI AGARWAL', 'Female', 56, 11, 'C', 'Commerce', '11/23/2008'),
                ( 1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '6/29/2006'),
                ( 1004, 'Ronit Kumar', 'Male', 63, 11, 'C', 'Commerce', '11/5/1997'),
                ( 1005, 'Dipesh Pulkit', 'Male', 78, 11, 'B', 'Science', '14/09/2003'),
                ( 1006, 'JAHANVI Puri', 'Female', 60, 11, 'B', 'Commerce', '11/7/2008'),
                ( 1007, 'Sanam kumar', 'Male', 23, 12, 'F', 'Commerce', '3/8/1998'),
                ( 1008, 'SAHIL SARAS', 'Male', 56, 11, 'C', 'Commerce', '11/7/1997'),
                ( 1009, 'AKSHARA AGARWAL', 'Female', 72, 12, 'B', 'Commerce', '10/1/1996'),
                ( 1010, 'STUTI MISHRA', 'Female', 39, 11, 'F', 'Science', '11/23/2008'),
                ( 1011, 'HARSH AGARWAL', 'Male', 42, 11, 'C', 'Science', '3/8/1998'),
                ( 1012, 'NIKUNJ AGARWAL', 'Male', 49, 12, 'C', 'Commerce', '28/06/1998'),
                ( 1013, 'AKRITI SAXENA', 'Female', 89, 12, 'A', 'Science', '11/23/2008'),
                ( 1014, 'TANI RASTOGI', 'Female', 82, 12, 'A', 'Science', '11/23/2008');
                
	
        
        
--  1 To display all the records form STUDENT table. SELECT * FROM student ;
							select * from student;
                        
-- 2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB
-- FROM student ;
							select stdname, dob from student where stdname='Harsh Agarwal'  and  DOB='3/8/1998';
                            
-- 3. To display all students record where percentage is greater of equal to 80 FROM student table.
-- SELECT * FROM student WHERE percentage >= 80;
							select *from student where percentage>=80;
                            
-- 4. To display student name, stream and percentage where percentage of student is more than 80
-- SELECT StdName, Stream, Percentage WHERE percentage > 80;
							Select Stdname, Stream, Percentage from student WHERE percentage > 80;
                            
-- 5. To display all records of science students whose percentage is more than 75 form student table.
-- SELECT * FORM student WHERE stream = ‘Science’ AND percentage > 75; 
							select * from student where stream='Science' and percentage>75;
                            


							-- The Table Imported From Exceel
                            
                            
                            select * from student assessment;
        1 To display all the records form STUDENT table. 
							select * from student;
                        
-- 2. To display any name and date of birth from the table STUDENT. 
							select stdname, dob from student where stdname='Harsh Agarwal'  and  DOB='3/8/1998';
                            
-- 3. To display all students record where percentage is greater of equal to 80 FROM student table.

							select *from student where percentage>=80;
                            
-- 4. To display student name, stream and percentage where percentage of student is more than 80

							Select Stdname, Stream, Percentage from student WHERE percentage > 80;
                            
-- 5. To display all records of science students whose percentage is more than 75 form student table.

							select * from student where stream='Science' and percentage>75;                     
                            

