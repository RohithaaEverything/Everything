#Before Insert
CREATE TABLE Student_Trigger(
Student_RollNo INT NOT NULL PRIMARY KEY,
Student_FirstName Varchar (100),
Student_EnglishMarks INT,
Student_PhysicsMarks INT,
Student_ChemistryMarks INT,
Student_MathsMarks INT,
Student_TotalMarks INT,
Student_Percentage INT);
DESC Student_Trigger;
CREATE TRIGGER Student_Table_Marks
BEFORE INSERT ON Student_Trigger FOR EACH ROW
SET new.Student_TotalMarks = new.Student_EnglishMarks + new.Student_PhysicsMarks + new.Student_ChemistryMarks + new.Student_MathsMarks,
new.Student_Percentage = (new.Student_TotalMarks / 400) * 100;
INSERT INTO Student_Trigger(Student_RollNo, Student_FirstName, Student_EnglishMarks,
Student_PhysicsMarks, Student_ChemistryMarks, Student_MathsMarks, Student_TotalMarks, Student_Percentage)
VALUES ( 201, 'Sorya', 88, 75, 69, 92, 0, 0);
SELECT * FROM Student_Trigger;

#After Insert
CREATE TABLE student_info(  
  stud_id int NOT NULL,  
  stud_code varchar(15) DEFAULT NULL,  
  stud_name varchar(35) DEFAULT NULL,  
  subject varchar(25) DEFAULT NULL,  
  marks int DEFAULT NULL,  
  phone varchar(15) DEFAULT NULL,  
  PRIMARY KEY (stud_id));
CREATE TABLE student_detail(  
  stud_id int NOT NULL,  
  stud_code varchar(15) DEFAULT NULL,  
  stud_name varchar(35) DEFAULT NULL,  
  subject varchar(25) DEFAULT NULL,  
  marks int DEFAULT NULL,  
  phone varchar(15) DEFAULT NULL,  
  Lasinserted Time,  
  PRIMARY KEY (stud_id));  
mysql> DELIMITER //  
Create Trigger after_insert_details  
AFTER INSERT ON student_info FOR EACH ROW  
BEGIN  
INSERT INTO student_detail VALUES (new.stud_id, new.stud_code,  
new.stud_name, new.subject, new.marks, new.phone, CURTIME());  
END //  
INSERT INTO student_info VALUES  
(10, 110, 'Alexandar', 'Biology', 67, '2347346438');  
SELECT * FROM student_detail;

#Before Update
CREATE TABLE sales (
id INT AUTO_INCREMENT,
product VARCHAR(100) NOT NULL,
quantity INT NOT NULL DEFAULT 0,
fiscalYear SMALLINT NOT NULL,
fiscalMonth TINYINT NOT NULL,
CHECK(fiscalMonth >= 1 AND fiscalMonth <= 12),
CHECK(fiscalYear BETWEEN 2000 and 2050),
CHECK (quantity >=0),
UNIQUE(product, fiscalYear, fiscalMonth), PRIMARY KEY(id));
INSERT INTO sales(product, quantity, fiscalYear, fiscalMonth) VALUES
('2003 Harley-Davidson Eagle Drag Bike',120, 2020,1),('1969 Corvair Monza', 150,2020,1),('1970 Plymouth Hemi Cuda', 200,2020,1);
SELECT * FROM sales;
CREATE TRIGGER before_sales_update
BEFORE UPDATE on sales for each row
SET errorMessage = CONCAT('The new quantity ',NEW.quantity,' cannot be 3 times greater than the current quantity ',OLD.quantity);
SELECT * FROM sales;

#After Update
CREATE TABLE students(    
    id int NOT NULL AUTO_INCREMENT,    
    name varchar(45) NOT NULL,    
    class int NOT NULL,    
    email_id varchar(65) NOT NULL,    
    PRIMARY KEY (id));  
INSERT INTO students (name, class, email_id)    
VALUES ('Stephen', 6, 'stephen@javatpoint.com'),  
('Bob', 7, 'bob@javatpoint.com'),  
('Steven', 8, 'steven@javatpoint.com'),  
('Alexandar', 7, 'alexandar@javatpoint.com');  
CREATE TABLE students_log(user varchar(45) NOT NULL,descreptions varchar(65) NOT NULL);  
DELIMITER $$  
CREATE TRIGGER after_update_studentsInfo 
AFTER UPDATE ON students FOR EACH ROW  
BEGIN INSERT into students_log VALUES (user(),CONCAT('Update Student Record ', OLD.name, ' Previous Class :',OLD.class, ' Present Class ', NEW.class));  
END $$    
DELIMITER ;
UPDATE students SET class = class + 1;  
select * from students_log;  

#Before Delete
CREATE TABLE salaries (  
    emp_num INT PRIMARY KEY,  
    valid_from DATE NOT NULL,  
    amount DEC(8 , 2 ) NOT NULL DEFAULT 0 );  
INSERT INTO salaries (emp_num, valid_from, amount)  
VALUES(102, '2020-01-10', 45000),(103, '2020-01-10', 65000),(105, '2020-01-10', 55000),(107, '2020-01-10', 70000),(109, '2020-01-10', 40000);  
CREATE TABLE salary_archives (  
    id INT PRIMARY KEY AUTO_INCREMENT,  
    emp_num INT,  
    valid_from DATE NOT NULL,  
    amount DEC(18 , 2 ) NOT NULL DEFAULT 0,  
    deleted_time TIMESTAMP DEFAULT NOW());  
DELIMITER $$  
CREATE TRIGGER before_delete_salaries  
BEFORE DELETE  
ON salaries FOR EACH ROW  
BEGIN  
    INSERT INTO salary_archives (emp_num, valid_from, amount)  
    VALUES(OLD. emp_num, OLD.valid_from, OLD.amount);  
END$$    
DELIMITER ;  
DELETE FROM salaries WHERE emp_num = 105;  
SELECT * FROM salary_archives;  

#After Delete
CREATE TABLE salaries (  
    emp_num INT PRIMARY KEY,  
    valid_from DATE NOT NULL,  
    amount DEC(8 , 2 ) NOT NULL DEFAULT 0);  
INSERT INTO salaries (emp_num, valid_from, amount)  
VALUES(102, '2020-01-10', 45000),  
    (103, '2020-01-10', 65000),  
    (105, '2020-01-10', 55000),  
    (107, '2020-01-10', 70000),  
    (109, '2020-01-10', 40000);  
CREATE TABLE total_salary_budget(  
    total_budget DECIMAL(10,2) NOT NULL);  
INSERT INTO total_salary_budget (total_budget)  
SELECT SUM(amount) FROM salaries;  
DELIMITER $$  
CREATE TRIGGER after_delete_salaries  
AFTER DELETE  
ON salaries FOR EACH ROW  
BEGIN  
   UPDATE total_salary_budget SET total_budget = total_budget - old.amount;  
END$$    
DELIMITER ;  
DELETE FROM salaries WHERE emp_num = 105;  
SELECT * FROM total_salary_budget;