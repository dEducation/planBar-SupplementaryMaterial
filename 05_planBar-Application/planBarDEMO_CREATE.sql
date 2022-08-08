--
-- Table 'planBarApp'
--
drop database if exists planBarApp;
drop user if exists 'planBarAppUser'@'localhost';
create database planBarApp;
create user 'planBarAppUser'@'localhost' identified by '1234567890';
grant all privileges on planBarApp.* to 'planBarAppUser'@'localhost';


--
-- Table 'planBarSAS'
--
drop database if exists planBarSAS;
drop user if exists 'planBarSASUser'@'localhost';
create database planBarSAS;
create user 'planBarSASUser'@'localhost' identified by '1234567890';
grant all privileges on planBarSAS.* to 'planBarSASUser'@'localhost';