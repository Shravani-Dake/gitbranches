DROP TABLE IF EXISTS users;
CREATE TABLE users(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    email VARCHAR(50),
    password VARCHAR(100),
    mobile CHAR(10)
);

insert into users (name,email,password,mobile) values ("shravani","shravanidake17@gmail.com","shravani123","9156843195");
insert into users (name,email,password,mobile) values ("trupti","truptizore08@gmail.com","trupti123","9876543210");