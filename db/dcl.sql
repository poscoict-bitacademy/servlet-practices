-- db 생성
create database webdb;

-- user 생성
create user 'webdb'@'localhost' identified by 'webdb';

-- 권한 부여
grant all privileges on webdb.* to 'webdb'@'localhost';