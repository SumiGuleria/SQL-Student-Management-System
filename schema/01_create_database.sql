USE StudentManagementSystem
CREATE TABLE Courses(
course_id INT PRIMARY KEY,
course_name VARCHAR(100)
);

CREATE TABLE Students(
student_id INT PRIMARY KEY,
course_id INT,
FOREIGN KEY(course_id) references Courses(course_id)
);

CREATE TABLE Enrollments(
enrollment_id INT PRIMARY KEY,
student_id INT,
course_id INT,
FOREIGN KEY (student_id) references Students(student_id),
FOREIGN KEY (course_id) references Courses(course_id)

);
