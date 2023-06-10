CREATE USER IF NOT EXISTS 'myll'@'%' identified by '1234';

GRANT ALL PRIVILEGES ON *.* TO 'myll';

FLUSH PRIVILEGES;

-- 테스트 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS testdb;

-- 테스트 데이터베이스 선택
USE testdb;

-- 테스트 테이블 생성
CREATE TABLE IF NOT EXISTS test_table
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age  INT
);

-- 테스트 데이터 삽입
INSERT INTO test_table (name, age)
VALUES ('John', 25),
       ('Jane', 30),
       ('Mike', 35);