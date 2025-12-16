 -- Q1. Write a Sql query that will fetch all upcoming courses.
SELECT * FROM courses WHERE start_date >= CURDATE() ORDER BY start_date;


-- Q2. Write a Sql query that will fetch all the registered students along with course name
SELECT s.reg_no, s.NAME, s.email, s.mobile_no, s.course_id, c.name
FROM students s JOIN courses c
ON s.course_id = c.course_id;

/* Q3. Write an SQL query to fetch the complete details of a student (based on their email) along with the details
of the course they are enrolled in. */ 
SELECT s.*, c.*
FROM students s INNER JOIN courses c
ON s.course_id = c.course_id
WHERE s.email = 'shravanidake17@gmail.com';

/*Q4. Write an SQL query to retrieve the course details and the list of non-expired videos for a specific student
using their email address. A video is considered active (not expired) if its added_at date plus the course’s
video_expire_days has not yet passed compared to the current date.
Example: A video added on 2025-01-01 with 30 video_expire_days remains active until 2025-01-31. */
SELECT c.course_id, c.name, c.start_date,c.end_date,c.video_expire_days,v.video_id,v.title,v.added_at 
FROM courses c JOIN videos v
ON c.course_id = v.course_id
AND (v.added_at + INTERVAL c.video_expire_days DAY) > CURDATE();