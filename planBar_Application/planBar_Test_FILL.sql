--
-- Table 'planBarApp'
--
use planBarApp;

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(3, 'Student'),
(2, 'Teacher');

INSERT INTO `holiday` (`id`, `end_date`, `name`, `start_date`, `semester_id`) VALUES
(1, '2022-01-02', 'Weihnachtsferien', '2021-12-19', 1),
(2, '2021-10-17', 'Herbstferien', '2021-10-02', 1),
(3, '2022-02-20', 'Sportferien', '2022-02-05', 2),
(4, '2022-05-01', 'Frühlingsferien', '2022-04-15', 2),
(5, '2022-08-21', 'Sommerferien', '2022-07-09', 2);

INSERT INTO `exam_type` (`id`, `days_to_prepare_total_sugg`, `name`, `workload_minutes_total_sugg`) VALUES
(1, 7, 'Schriftliche Prüfung (gross)', 120),
(2, 3, 'Schriftliche Prüfung (klein)', 60),
(3, 7, 'Mündliche Prüfung (gross)', 120),
(4, 3, 'Mündliche Prüfung (klein)', 60),
(5, 60, 'Abgabe Arbeit (gross)', 1200),
(6, 30, 'Abgabe Arbeit (klein)', 600),
(7, 60, 'Abgabe Projekt (gross)', 1200),
(8, 30, 'Abgabe Projekt (klein)', 600),
(9, 14, 'Vortrag', 300);


--
-- Table 'planBarSAS'
--
use planBarSAS;

INSERT INTO `semester` (`id`, `ende`, `name`, `start`) VALUES
(1, '2022-01-21', 'HS 2021', '2021-08-16'),
(2, '2022-08-21', 'FS 2022', '2022-01-22');

INSERT INTO `subject` (`id`, `name`, `tag`) VALUES
(1, 'Deutsch', 'D'),
(2, 'Französisch', 'F'),
(3, 'Englisch', 'E'),
(4, 'Latein', 'L'),
(5, 'Mathematik', 'M'),
(6, 'Biologie', 'B'),
(7, 'Chemie', 'C'),
(8, 'Phyisk', 'P'),
(9, 'Geschichte', 'G'),
(10, 'Geografie', 'GG'),
(11, 'Bildnerische Gestaltung', 'BG'),
(12, 'Musik', 'MU'),
(13, 'Klassenstunde', 'KL'),
(14, 'Sport', 'SP');

INSERT INTO `klasse` (`id`, `name`, `klassenlehrer_id`) VALUES
(1, '3a', null);

INSERT INTO `user` (`id`, `email`, `funktion`, `geb`, `kuerzel`, `name`, `password`, `plz`, `schluesselnr`, `strasse`, `telefon`, `titel`, `vorname`, `klasse_id`) VALUES
(1, 'student@planbar.ch', 'Student', NULL, NULL, 'Student', '$2a$10$56PraTzPW/a.cpmgv2t8R.rlwlgwzcyA14aKuqCTCPA0zO2CRJImO', NULL, NULL, NULL, NULL, NULL, 'Test', 1),
(2, 'teacher@planbar.ch', 'Teacher', NULL, NULL, 'Teacher', '$2a$10$4qM9G8JQgSWCtiwtnScrcePWNh7f1I3af5Gf1aRts/Nw5SC6xwYqW', NULL, NULL, NULL, NULL, NULL, 'Test', NULL);
UPDATE klasse SET klassenlehrer_id=2 WHERE id=1;

INSERT INTO `kurs` (`id`, `name`, `fach_id`) VALUES
(1, 'D-3a', 1),
(2, 'F-3a', 2),
(3, 'E-3a', 3),
(4, 'L-3a', 4),
(5, 'M-3a', 5),
(6, 'B-3a', 6),
(7, 'C-3a', 7),
(8, 'P-3a', 8),
(9, 'G-3a', 9),
(10, 'GG-3a', 10),
(11, 'BG-3a', 11),
(12, 'MU-3a', 12),
(13, 'KL-3a', 13),
(14, 'SP-3a', 14);

INSERT INTO `user_kurse` (`schueler_id`, `kurse_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(2, 9),
(1, 10),
(1, 11),
(1, 13),
(1, 14);

INSERT INTO `pruefung` (`id`, `bezeichnung`, `created_on`, `datum`, `freigabe`, `gewicht`, `kommentar`, `pruefungsstoff`, `author_id`, `kurs_id`) VALUES
(1, 'Prüfung 1: Aufsatz', '2022-05-01', '2022-05-09', '2022-05-09', 1, NULL, NULL, 2, 1),
(2, 'Prüfung 2: Grammatik', '2022-05-01', '2022-05-25', '2022-05-25', 1, NULL, NULL, 2, 1),
(3, 'Lecture', '2022-05-01', '2022-05-13', '2022-05-13', 1, NULL, NULL, NULL, 2),
(4, 'Vocabulaire', '2022-05-01', '2022-05-20', '2022-05-20', 0.5, NULL, NULL, NULL, 2),
(5, 'Grammar: Past', '2022-05-01', '2022-05-16', '2022-05-16', 1, NULL, NULL, NULL, 3),
(6, 'Folgen und Reihen', '2022-05-01', '2022-05-12', '2022-05-12', 1, NULL, NULL, NULL, 5),
(7, 'Jahresprüfung (mündlich)', '2022-05-01', '2022-06-02', '2022-06-02', 1, NULL, NULL, NULL, 5),
(8, 'Französische Revolution', '2022-05-01', '2022-05-19', '2022-05-19', 1, NULL, NULL, 2, 9),
(9, 'Plattentektonik', '2022-05-01', '2022-05-17', '2022-05-17', 1, NULL, NULL, NULL, 10);

INSERT INTO `hausaufgabe` (`id`, `bezeichnung`, `created_on`, `datum`, `kommentar`, `author_id`, `kurs_id`) VALUES
(1, 'Lesen bis S. 53', '2022-05-01', '2022-05-16', NULL, 2, 1),
(2, 'Laborjournal schreiben', '2022-05-01', '2022-05-18', NULL, NULL, 8),
(3, 'Seiten 10-20 zusammenfassen', '2022-05-01', '2022-05-12', NULL, NULL, 7),
(4, 'Skizze fertigstellen', '2022-05-01', '2022-05-13', NULL, NULL, 11),
(5, 'Arbeitsauftrag "Grenzwerte" fertig', '2022-05-01', '2022-05-26', NULL, NULL, 5);