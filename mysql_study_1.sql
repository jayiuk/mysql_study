CREATE DATABASE mydata;
SHOW databases;
USE mydata;
SELECT * FROM dataset2;
SHOW databases;
SHOW tables;
CREATE SCHEMA instacart;
CREATE SCHEMA titanic;
USE classicmodels;
SELECT * FROM customers;
SELECT DATABASE();
USE sakila;
SELECT DATABASE();
SELECT * FROM customers; -- 에러발생. 데이터베이스를 다른걸 쓰고있음
USE classicmodels;
DESC customers; -- 테이블에 대한 기본적인 설명
-- SELECT : 열 선택(필드 선택)
SELECT * FROM customers;
SELECT contactLastName, customerName, contactFirstName FROM customers;
SELECT
	contactFirstName
    , contactLastName
    , customerName
FROM
	customers
;