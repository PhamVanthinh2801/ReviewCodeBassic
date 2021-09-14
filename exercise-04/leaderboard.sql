create database StudentsManagement

create table Student
(
	 St_id nvarchar(20)  primary key not null, 
	 st_name varchar(20),  
	 st_address nvarchar(100), 
	 st_cellNo nvarchar(10), 

	 
	 CONSTRAINT fk_htk_Dept_id
	 FOREIGN KEY (Dept_id)
     REFERENCES sanpham (Dept_id)
)
create table Department
(
	Dept_id int primary key not null,
	Dept_name varchar(20),
	Dept_Location nvarchar(100), 

)

create table Grade
(
	CONSTRAINT fk_htk_St_id
	FOREIGN KEY (St_id)
    REFERENCES sanpham (St_id)

	Sub_code int primary key not null,
	Exam_name nvarchar(100),
	Marks int,
	Gpa int,
)

create table Subject
(
	CONSTRAINT fk_htk_Sub_code
	FOREIGN KEY (Sub_code)
    REFERENCES sanpham (Sub_code)

    Sub_name nvarchar(100),
    crd_hrs int,
)

ALTER TABLE Student
ADD CONSTRAINT FK__Constraint_ID
FOREIGN KEY (Dept_id) REFERENCES Department(Dept_id);

ALTER TABLE Grade
ADD CONSTRAINT FK__Constraint_ID
FOREIGN KEY (St_id) REFERENCES Student(St_id);

ALTER TABLE Subject
ADD CONSTRAINT FK__Constraint_ID
FOREIGN KEY (Sub_code) REFERENCES Grade(Sub_code);


INSERT INTO Student (St_id, st_name, st_address, st_cellNo, Dept_id)
VALUES ('001', 'Pham Van Thinh', '1 District', 'null', '01');
INSERT INTO Student (St_id, st_name, st_address, st_cellNo, Dept_id)
VALUES ('002', 'Pham Van An', '2 District', 'null', '01');
INSERT INTO Student (St_id, st_name, st_address, st_cellNo, Dept_id)
VALUES ('003', 'Pham Van Minh', '3 District', 'null', '01');
INSERT INTO Student (St_id, st_name, st_address, st_cellNo, Dept_id)
VALUES ('004', 'Pham Van Ty', '4 District', 'null', '01');
INSERT INTO Student (St_id, st_name, st_address, st_cellNo, Dept_id)
VALUES ('005', 'Pham Van Teo', '5 District', 'null', '01');
INSERT INTO Student (St_id, st_name, st_address, st_cellNo, Dept_id)
VALUES ('006', 'Pham Van Quang', '6 District', 'null', '01');
INSERT INTO Student (St_id, st_name, st_address, st_cellNo, Dept_id)
VALUES ('007', 'Pham Van Chi', '7 District', 'null', '01');

INSERT INTO Department (Dept_id, Dept_name, Dept_Location)
VALUES ('01', 'CNTT', 'Ton Duc Thang');

INSERT INTO Grade (St_id, Sub_code, Exam_name, Marks, Gpa)
VALUES ('001', '155', 'CNTT', '9.0', '8.5');
INSERT INTO Grade (St_id, Sub_code, Exam_name, Marks, Gpa)
VALUES ('002', '155', 'CNTT', '8.0', '7.5');
INSERT INTO Grade (St_id, Sub_code, Exam_name, Marks, Gpa)
VALUES ('003', '155', 'CNTT', '7.0', '6.5');
INSERT INTO Grade (St_id, Sub_code, Exam_name, Marks, Gpa)
VALUES ('004', '155', 'CNTT', '6.0', '5.5');
INSERT INTO Grade (St_id, Sub_code, Exam_name, Marks, Gpa)
VALUES ('005', '155', 'CNTT', '5.0', '4.5');
INSERT INTO Grade (St_id, Sub_code, Exam_name, Marks, Gpa)
VALUES ('006', '155', 'CNTT', '4.0', '3.5');
INSERT INTO Grade (St_id, Sub_code, Exam_name, Marks, Gpa)
VALUES ('007', '155', 'CNTT', '3.0', '2.5');

select Student, Avg(Grade) as Gpa
from Student
group by st_name
order by 1 DESC -- Add DESC
LIMIT 10 -- Add LIMIT
