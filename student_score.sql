use students_score;

CREATE TABLE `subject` (
  `subject_batch` char(7) PRIMARY KEY,
  `subject_name` varchar(30),
  `subject_credits` integer
);

CREATE TABLE `score` (
  `student_id` integer,
  `subject_batch` char(7),
  `semester` integer,
  `middle_score` integer,
  `final_score` integer,
  PRIMARY KEY (`student_id`, `subject_batch`)
);

CREATE TABLE `student` (
  `student_id` integer PRIMARY KEY,
  `student_name` varchar(30),
  `gender` char(10),
  `date_of_birth` date,
  `city` varchar(15),
  `course_batch` char(9)
);

CREATE TABLE `course` (
  `course_batch` char(9) PRIMARY KEY,
  `course_name` varchar(30)
);

ALTER TABLE `score` ADD FOREIGN KEY (`subject_batch`) REFERENCES `subject` (`subject_batch`);

ALTER TABLE `score` ADD FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

ALTER TABLE `student` ADD FOREIGN KEY (`course_batch`) REFERENCES `course` (`course_batch`);
