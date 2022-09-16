--
-- Table 'planBarSAS'
--
use planBarSAS;

INSERT INTO `klasse` VALUES
	(1,'3a',NULL);
    
INSERT INTO `user` VALUES
	(1,'student@planbar.ch','Student',NULL,NULL,'Student','$2a$10$uyZdM9dLcJBOjOcI999UfOwiwdkJNlzWOJZwJvQcavoQUR1ddg3D6',NULL,NULL,NULL,NULL,NULL,'Test',1),
    (2,'teacher@planbar.ch','Teacher',NULL,NULL,'Teacher','$2a$10$anMJy1A4EoS.s4UBp26z6.D8wKKL/W4wcFphK6XEqa2xMB6uAae62',NULL,NULL,NULL,NULL,NULL,'Test',NULL);
UPDATE klasse SET klassenlehrer_id=2 WHERE id=1;

INSERT INTO `semester` VALUES
	(1,'2022-01-21','HS 2021','2021-08-16'),
    (2,'2022-12-31','FS 2022 / HS 2022','2022-01-22');
    # or there will be problems with the date (2,'2022-08-21','FS 2022','2022-01-22');

INSERT INTO `fach` VALUES
	(1,'Deutsch','D'),
    (2,'Französisch','F'),
    (3,'Englisch','E'),
    (4,'Latein','L'),
    (5,'Mathematik','M'),
    (6,'Biologie','B'),
    (7,'Chemie','C'),
    (8,'Phyisk','P'),
    (9,'Geschichte','G'),
    (10,'Geografie','GG'),
    (11,'Bildnerische Gestaltung','BG'),
    (12,'Musik','MU'),
    (13,'Klassenstunde','KL'),
    (14,'Sport','SP');
    
INSERT INTO `kurs` VALUES
	(1,'D-3a',1),
    (2,'F-3a',2),
    (3,'E-3a',3),
    (4,'L-3a',4),
    (5,'M-3a',5),
    (6,'B-3a',6),
    (7,'C-3a',7),
    (8,'P-3a',8),
    (9,'G-3a',9),
    (10,'GG-3a',10),
    (11,'BG-3a',11),
    (12,'MU-3a',12),
    (13,'KL-3a',13),
    (14,'SP-3a',14);
    
INSERT INTO `user_kurse` VALUES
	(1,1),
    (2,1),
    (1,2),
    (1,3),
    (1,5),
    (1,6),
    (1,7),
    (1,8),
    (1,9),
    (2,9),
    (1,10),
    (1,11),
    (1,13),
    (1,14);

INSERT INTO `hausaufgabe` VALUES
	(1,'Lesen bis S. 53','2022-05-01','2022-05-16',NULL,2,1),
    (2,'Laborjournal schreiben','2022-05-01','2022-05-18',NULL,NULL,8),
    (3,'Seiten 10-20 zusammenfassen','2022-05-01','2022-05-12',NULL,NULL,7),
    (4,'Skizze fertigstellen','2022-05-01','2022-05-13',NULL,NULL,11),
    (5,'Arbeitsauftrag \"Grenzwerte\" fertig','2022-05-01','2022-05-26',NULL,NULL,5);
    
INSERT INTO `pruefung` VALUES
	(1,'Prüfung 1: Aufsatz','2022-05-01','2022-05-09','2022-05-09',1,NULL,NULL,2,1),
    (2,'Prüfung 2: Grammatik','2022-05-01','2022-05-25','2022-05-25',1,NULL,NULL,2,1),
    (3,'Lecture','2022-05-01','2022-05-13','2022-05-13',1,NULL,NULL,NULL,2),
    (4,'Vocabulaire','2022-05-01','2022-05-20','2022-05-20',0.5,NULL,NULL,NULL,2),
    (5,'Grammar: Past','2022-05-01','2022-05-16','2022-05-16',1,NULL,NULL,NULL,3),
    (6,'Folgen und Reihen','2022-05-01','2022-05-12','2022-05-12',1,NULL,NULL,NULL,5),
    (7,'Jahresprüfung (mündlich)','2022-05-01','2022-06-02','2022-06-02',1,NULL,NULL,NULL,5),
    (8,'Französische Revolution','2022-05-01','2022-05-19','2022-05-19',1,NULL,NULL,2,9),
    (9,'Plattentektonik','2022-05-01','2022-05-17','2022-05-17',1,NULL,NULL,NULL,10);


--
-- Table 'planBarApp'
--
use planBarApp;

INSERT INTO `semester` (`id`,`enabled`,`end_date`,`max_number_of_exams`,`name`,`start_date`) VALUES
	(1,_binary '','2022-01-21',5,'HS 2021','2021-08-16'),
    (2,_binary '','2022-12-31',5,'FS 2022 / HS 2022','2022-01-22');
     # or there will be problems with the date (2,_binary '','2022-10-01',5,'FS 2022','2022-01-22');

INSERT INTO `holiday` (`id`,`end_date`,`name`,`start_date`,`semester_id`) VALUES
	(1,'2022-01-02','Weihnachtsferien','2021-12-19',1),
    (2,'2021-10-17','Herbstferien','2021-10-02',1),
    (3,'2022-02-20','Sportferien','2022-02-05',2),
    (4,'2022-05-01','Frühlingsferien','2022-04-15',2),
    (5,'2022-08-21','Sommerferien','2022-07-09',2);
    
INSERT INTO `role` (`id`,`name`) VALUES
	(1,'Admin'),
	(2,'Teacher'),
	(3,'Student');
    
INSERT INTO `personal_work_week` (`id`,`working_minutes_friday`,`working_minutes_monday`,`working_minutes_saturday`,`working_minutes_sunday`,`working_minutes_thursday`,`working_minutes_tuesday`,`working_minutes_wednesday`) VALUES
	(1,0,90,60,240,90,90,120);
    
INSERT INTO `user` (`id`,`mocknetz_token`,`avatar`,`created_on`,`exams_done_on_logout`,`homeworks_done_on_logout`,`is_active`,`is_enabled`,`last_login`,`nick_name`,`password`,`personals_done_on_logout`,`user_image`,`core_course_id`,`personal_work_week_id`) VALUES
	(1,NULL,NULL,NULL,0,0,_binary '\0',_binary '',NULL,NULL,'$2a$10$UHcoRBnQqXo8xA/fhRDS4e3j7iN9EYYcoM317.UbvCapUlv8Aygf6',0,'default',NULL,1),
    (2,NULL,NULL,NULL,0,0,_binary '\0',_binary '',NULL,NULL,'$2a$10$2ZaXWf65myJlAvMiJnLILu3bSc.DUeq0/0TRjktrFckiVezV8jv5i',0,'default',NULL,NULL);
    
INSERT INTO `user_roles` (`users_id`,`roles_id`) VALUES
	(1,3),
    (2,2);

INSERT INTO `subject` (`id`,`name`,`tag`) VALUES
	(1,'Deutsch','D'),
    (2,'Französisch','F'),
    (3,'Englisch','E'),
    (5,'Mathematik','M'),
    (6,'Biologie','B'),
    (7,'Chemie','C'),
    (8,'Phyisk','P'),
    (9,'Geschichte','G'),
    (10,'Geografie','GG'),
    (11,'Bildnerische Gestaltung','BG'),
    (13,'Klassenstunde','KL'),
    (14,'Sport','SP');

INSERT INTO `course` (`id`,`name`,`subject_id`) VALUES
	(1,'D-3a',1),
    (2,'F-3a',2),
    (3,'E-3a',3),
    (5,'M-3a',5),
    (6,'B-3a',6),
    (7,'C-3a',7),
    (8,'P-3a',8),
    (9,'G-3a',9),
    (10,'GG-3a',10),
    (11,'BG-3a',11),
    (13,'KL-3a',13),
    (14,'SP-3a',14);
    
INSERT INTO `user_courses` (`users_id`,`courses_id`) VALUES
	(1,1),
    (2,1),
    (1,2),
    (1,3),
    (1,5),
    (1,6),
    (1,7),
    (1,8),
    (1,9),
    (2,9),
    (1,10),
    (1,11),
    (1,13),
    (1,14);
    
INSERT INTO `exam_type` (`id`,`days_to_prepare_total_sugg`,`name`,`workload_minutes_total_sugg`) VALUES
	(1,7,'Schriftliche Prüfung (gross)',120),
    (2,3,'Schriftliche Prüfung (klein)',60),
    (3,7,'Mündliche Prüfung (gross)',120),
    (4,3,'Mündliche Prüfung (klein)',60),
    (5,60,'Abgabe Arbeit (gross)',1200),
    (6,30,'Abgabe Arbeit (klein)',600),
    (7,60,'Abgabe Projekt (gross)',1200),
    (8,30,'Abgabe Projekt (klein)',600),
    (9,14,'Vortrag',300);

INSERT INTO `exam` (`plan_bar_id`,`create_date`,`days_to_prepare_total_sugg`,`description`,`due_date`,`mock_id`,`name`,`real_edit_date`,`start_date`,`type`,`visible`,`workload_minutes_total_sugg`,`counting_factor`,`course_id`,`creator_id`,`exam_type_id`,`semester_id`) VALUES
	(1,'2022-05-01 19:06:50.412759',-1,NULL,'2022-05-13',3,'Lecture','2022-05-01 19:06:50.412759',NULL,'exam',_binary '',60,1,2,1,4,2),
    (2,'2022-05-01 19:06:50.441762',-1,NULL,'2022-05-20',4,'Vocabulaire','2022-05-01 19:06:50.441762',NULL,'exam',_binary '',-1,0.5,2,1,NULL,2),
    (3,'2022-05-01 19:06:50.699737',-1,NULL,'2022-05-16',5,'Grammar: Past','2022-05-01 19:06:50.699737',NULL,'exam',_binary '',-1,1,3,1,NULL,2),
    (4,'2022-05-01 19:06:50.879831',-1,NULL,'2022-05-19',8,'Französische Revolution','2022-05-01 19:06:50.879831',NULL,'exam',_binary '',-1,1,9,2,NULL,2),
    (5,'2022-05-01 19:06:51.080334',-1,NULL,'2022-05-17',9,'Plattentektonik','2022-05-01 19:06:51.080334',NULL,'exam',_binary '',-1,1,10,1,NULL,2),
    (6,'2022-05-01 19:06:51.205123',-1,NULL,'2022-05-09',1,'Prüfung 1: Aufsatz','2022-05-01 19:06:51.205123',NULL,'exam',_binary '',-1,1,1,2,NULL,2),
    (7,'2022-05-01 19:06:51.217089',-1,NULL,'2022-05-25',2,'Prüfung 2: Grammatik','2022-05-01 19:06:51.217089',NULL,'exam',_binary '',-1,1,1,2,NULL,2),
    (8,'2022-05-01 19:06:51.298041',-1,NULL,'2022-05-12',6,'Folgen und Reihen','2022-05-01 19:06:51.298041',NULL,'exam',_binary '',120,1,5,1,NULL,2),
    (9,'2022-05-01 19:06:51.308510',-1,NULL,'2022-06-02',7,'Jahresprüfung (mündlich)','2022-05-01 19:06:51.308510',NULL,'exam',_binary '',-1,1,5,1,3,2);
    
INSERT INTO `exam_status` (`days_to_prepare_total`,`extra_dates`,`notes`,`personal_preference`,`priority`,`ranking`,`status`,`workload_minutes_done`,`workload_minutes_total`,`exam_plan_bar_id`,`user_id`) VALUES
	(7,NULL,'',0,2,0,0,0,90,1,1),
    (2,NULL,'',0,3,0,0,0,180,2,1),
    (3,NULL,'',0,2,0,2,0,120,3,1),
    (7,NULL,'',0,2,0,1,0,240,4,1),
    (3,NULL,'',0,3,0,0,0,120,5,1),
    (7,NULL,'',0,1,0,4,0,0,6,1),
    (3,NULL,'',0,3,0,0,0,180,7,1),
    (7,NULL,'',0,3,0,4,0,150,8,1),
    (14,NULL,'',0,3,0,0,0,300,9,1);

INSERT INTO `homework` (`plan_bar_id`,`create_date`,`days_to_prepare_total_sugg`,`description`,`due_date`,`mock_id`,`name`,`real_edit_date`,`start_date`,`type`,`visible`,`workload_minutes_total_sugg`,`course_id`,`creator_id`,`semester_id`) VALUES
	(1,'2022-05-01 19:23:53.908028',-1,NULL,'2022-05-16',1,'Lesen bis S. 53','2022-05-01 19:29:23.192202',NULL,'homework',_binary '',20,1,2,2),
    (2,'2022-05-01 19:23:53.931979',-1,NULL,'2022-05-18',2,'Laborjournal schreiben','2022-05-01 19:29:23.196444',NULL,'homework',_binary '',20,8,1,2),
    (3,'2022-05-01 19:23:53.954522',-1,NULL,'2022-05-26',3,'Seiten 10-20 zusammenfassen','2022-05-01 19:29:58.694462',NULL,'homework',_binary '',20,7,1,2),
    (4,'2022-05-01 19:29:23.182726',-1,NULL,'2022-05-13',4,'Skizze fertigstellen','2022-05-01 19:29:23.182726',NULL,'homework',_binary '',-1,11,1,2),
    (5,'2022-05-01 19:29:23.205390',-1,NULL,'2022-05-26',5,'Arbeitsauftrag \"Grenzwerte\" fertig','2022-05-01 19:29:23.205390',NULL,'homework',_binary '',-1,5,1,2);

INSERT INTO `homework_status` (`days_to_prepare_total`,`extra_dates`,`notes`,`personal_preference`,`priority`,`ranking`,`status`,`workload_minutes_done`,`workload_minutes_total`,`homework_plan_bar_id`,`user_id`) VALUES
	(3,NULL,'',0,2,0,0,0,30,1,1),
    (3,NULL,'',0,2,0,1,0,45,2,1),
    (3,NULL,'',0,0,0,0,0,90,3,1),
    (3,NULL,'',0,1,0,3,0,90,4,1),
    (3,NULL,'',0,2,0,3,0,60,5,1);

INSERT INTO `personal` (`plan_bar_id`,`create_date`,`days_to_prepare_total_sugg`,`description`,`due_date`,`mock_id`,`name`,`real_edit_date`,`start_date`,`type`,`visible`,`workload_minutes_total_sugg`,`course_id`,`creator_id`,`semester_id`) VALUES
	(1,'2022-05-01 19:20:47.770628',21,NULL,'2022-05-15',NULL,'Abgabe: Disposition Maturaarbeit',NULL,NULL,'personal',_binary '',300,NULL,1,NULL),
    (2,'2022-05-01 19:23:10.068798',1,NULL,'2022-05-19',NULL,'Hauptprobe: Theaterclub',NULL,NULL,'personal',_binary '',180,NULL,1,NULL);

INSERT INTO `personal_status` (`days_to_prepare_total`,`extra_dates`,`notes`,`personal_preference`,`priority`,`ranking`,`status`,`workload_minutes_done`,`workload_minutes_total`,`personal_plan_bar_id`,`user_id`) VALUES
	(21,NULL,'',0,3,0,3,0,300,1,1),
    (0,NULL,'',0,0,0,0,0,180,2,1);
