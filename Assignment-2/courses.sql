USE PROJECT_DB;

CREATE TABLE COURSES(
    COURSE_ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(20) NOT NULL,
    DESCP VARCHAR(200) NOT NULL , 
    FEES INT NOT NULL,
    START_DATE DATE,
    END_DATE DATE,
    VIDEO_EXPIRE_DAYS INT
) AUTO_INCREMENT=101;

DESC COURSES ;

INSERT INTO COURSES (NAME,DESCP,FEES,START_DATE,END_DATE,VIDEO_EXPIRE_DAYS) VALUES('MERN','It is an acronym for MongoDB, Express. js, React, and Node. js., the MERN stack allows full-stack developers to build robust and scalable applications using JavaScript.',4000,'2025-12-12','2025-12-19',7);
INSERT INTO COURSES (NAME,DESCP,FEES,START_DATE,END_DATE,VIDEO_EXPIRE_DAYS) VALUES('PYTHON','Python web development refers to the process of creating web applications and websites using the Python programming language.',5000,'2025-12-1','2025-12-8',7);
INSERT INTO COURSES (NAME,DESCP,FEES,START_DATE,END_DATE,VIDEO_EXPIRE_DAYS) VALUES('GEN-AI','This is an introductory level microlearning course aimed at explaining what Generative AI is, how it is used, and how it differs from traditional machine learning methods.',10000,'2025-12-7','2025-12-14',7);
INSERT INTO COURSES (NAME,DESCP,FEES,START_DATE,END_DATE,VIDEO_EXPIRE_DAYS) VALUES('JAVA','Popular for its versatility and ability to create a wide variety of applications, learning Java opens up your possibilities when coding.',3000,'2025-12-6','2025-12-13',7);
INSERT INTO COURSES (NAME,DESCP,FEES,START_DATE,END_DATE,VIDEO_EXPIRE_DAYS) VALUES('ANALYTICS','A data analyst works with data to solve business problems using tools like SQL, R or other programming languages, data visualization software, and statistical analysis.',10000,'2025-12-1','2025-12-8',7);

SELECT * FROM COURSES;
