DROP DATABASE IF NOT EXISTS hoai;
CREATE DATABASE IF NOT EXISTS hoai;
USE hoai;
-- TAO BANG 1
DROP TABLE IF EXISTS deparment;
CREATE TABLE IF NOT EXISTS deparment
(
deparment_id    INT AUTO_INCREMENT PRIMARY KEY,
deparment_name  VARCHAR(100)
);
-- TAO BANG 2
CREATE TABLE IF NOT EXISTS position
(
position_id    INT AUTO_INCREMENT PRIMARY KEY,
position_name  VARCHAR(100)
);
-- TAO BANG 3
CREATE TABLE IF NOT EXISTS account1
(
account_id    INT AUTO_INCREMENT PRIMARY KEY,
email  VARCHAR(100),
usename  VARCHAR(100),
fullname  VARCHAR(100),
deparment_id INT,
position_id VARCHAR(100),
create_date  VARCHAR(100)
);
-- TAO BANG 4
CREATE TABLE IF NOT EXISTS group1
(
group_id    INT AUTO_INCREMENT PRIMARY KEY,
group_name  VARCHAR(100),
create_id   VARCHAR(100),
create_date VARCHAR(100)
);
-- TAO BANG 5
CREATE TABLE IF NOT EXISTS groupaccount
(
group_id    INT AUTO_INCREMENT PRIMARY KEY,
account_id  VARCHAR(100),
joindate    VARCHAR(100)
);
-- TAO BANG 6
CREATE TABLE IF NOT EXISTS typequestion
(
type_id    INT AUTO_INCREMENT PRIMARY KEY,
type_name  VARCHAR(100)
);
-- TAO BANG 7
CREATE TABLE IF NOT EXISTS categogy_question
(
categogy_id    INT AUTO_INCREMENT PRIMARY KEY,
categogyname  VARCHAR(100)
);
-- TAO BANG 8
CREATE TABLE IF NOT EXISTS question
(
question_id    INT AUTO_INCREMENT PRIMARY KEY,
content  VARCHAR(100),
categogy_id   VARCHAR(100),
type_id      VARCHAR(100),
create_id   VARCHAR(100),
create_date VARCHAR(100)
);
-- TAO BANG 9
CREATE TABLE IF NOT EXISTS answer (
    answer_id INT AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(100),
    question_id VARCHAR(100),
    isCorrect VARCHAR(100)
);
-- TAO BANG 10
CREATE TABLE IF NOT EXISTS exam (
    exam_id INT AUTO_INCREMENT PRIMARY KEY,
    Code INT,
    title VARCHAR(100),
    categogy_id   VARCHAR(100),
    duration VARCHAR(100),
    create_id VARCHAR(100),
    create_date VARCHAR(100)
    );
-- TAO BANG 11  
CREATE TABLE IF NOT EXISTS examquestion
(
exam_id    INT AUTO_INCREMENT PRIMARY KEY,
question_id  VARCHAR(100)
);  