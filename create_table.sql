Create Table Professor (
    ssn CHAR(9) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    street VARCHAR(100),
    city VARCHAR(50),
    prof_state CHAR(2),
    zip_code CHAR(5),
    phone_num CHAR(10),
    title VARCHAR(50),
    salary DECIMAL(7,2),
 -- figure out how to handle multiple degrees
   FOREIGN KEY dept_num REFERENCES Departments(dept_num)
);

Create Table Departments (
    dept_num int PRIMARY KEY,
    phone_num CHAR(10),
    office_location int,
    FOREIGN KEY cwid REFERENCES(Student_record),
    FOREIGN KEY chair_ssn REFERENCES Professor(ssn)
);

Create Table Student_record (
    cwid int PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    street VARCHAR(100),
    city VARCHAR(50),
    student_state CHAR(2),
    zip_code CHAR(5),
    phone_num CHAR(10),
 -- figure out minor dept
    FOREIGN KEY dept_num REFERENCES(Departments)
);

-- needs work since weak entitty Create Table Sections (
    section_num PRIMARY KEY,
-- pretty sure its not int start_time int,
-- pretty sure its not int   end_time int,
    classroom int,
    meet_days VARCHAR(10),
    seat_num int,
--);

Create Table Course (
    course_num int,
    title VARCHAR(50),
    textbook VARCHAR(100),
    units VARCHAR(10),
    FOREIGN KEY dept_num REFERENCES(Departments),
);

Create Table Enrollment (
    





);




