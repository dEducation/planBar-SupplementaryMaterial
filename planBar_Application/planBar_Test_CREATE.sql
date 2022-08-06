--
-- Table 'planBarApp'
--
create database planBarApp;
create user 'planBarAppUser'@'localhost' identified by '1234567890';
grant all privileges on planBarApp to 'planBarAppUser'@'localhost';


--
-- Table 'planBarSAS'
--
create database planBarSAS;
create user 'planBarSASUser'@'localhost' identified by '1234567890';
grant all privileges on planBarSAS to 'planBarSASUser'@'localhost';