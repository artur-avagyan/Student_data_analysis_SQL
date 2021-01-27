DROP TABLE IF EXISTS student_info;
DROP TABLE IF EXISTS student_country;
DROP TABLE IF EXISTS student_faculty;
DROP TABLE IF EXISTS student_score;
DROP TABLE IF EXISTS student_rate;


CREATE TABLE IF NOT EXISTS student_info (
    student_id INT primary key,
    student_name TEXT,
    student_surname TEXT,
    student_age INT,
    student_gender TEXT
);
INSERT INTO student_info VALUES
    (1,'Ashot','Manucaryan',21,'M'),
    (2,'Aram','Araqelyan',23,'M'),
    (3,'Arman','Movsisyan',23,'M'),
    (4,'Syuzi','Gabrielyan',23,'F'),
    (5,'Narine','Mesropyan',20,'M'),
    (6,'Artashes','Araqelyan',19,'M'),
    (7,'Marine','Azatyan',18,'F'),
    (8,'Varduhi','Hakobyan',17,'F'),
    (9,'Mesrop','Davtyan',16,'M'),
    (10,'Gagik','Sargsyan',18,'M'),
    (11,'Gegham','Manukyan',18,'M'),
    (12,'Felix','Avagyan',18,'M'),
    (13,'Anjela','Saribekyan',17,'F'),
    (14,'Meri','Nersisyan',22,'F'),
    (15,'Mariam','Minasyan',21,'F'),
    (16,'Nune','Nersisyan',21,'F'),
    (17,'Suren','Muradyan',21,'M'),
    (18,'Jora','Begrakyan',22,'M'),
    (19,'Narek','Sardaryan',23,'M'),
    (20,'Ashot','Simonyan',21,'M'),
    (21,'Anna','Muradyan',24,'F'),
    (22,'Armen','Asatryan',25,'M'),
    (23,'Suren','Mkhitaryan',19,'M'),
    (24,'Meri','Mazmanyan',20,'F'),
    (25,'Karen','Papikyan',23,'M'),
    (26,'Sergey','Bdoyan',21,'M'),
    (27,'Susanna','Melqonyan',17,'F'),
    (28,'Gevorg','Surenyan',16,'M'),
    (29,'Serob','Muradyan',24,'M'),
    (30,'Arshak','Manukyan',20,'M'),
    (31,'Mane','Sisakyan',19,'F'),
    (32,'Jivan','Gasparyan',20,'M'),
    (33,'Manvel','Saruxanyan',22,'M'),
    (34,'Nora','Serobyan',19,'F'),
    (35,'Alina','Avdalyan',23,'F'),
    (36,'Mane','Shatveryan',20,'F'),
    (37,'Lilit','Gasparyan',21,'F'),
    (38,'Gurgen','Melqonyan',22,'M'),
    (39,'Mesrop','Sahakyan',25,'M'),
    (40,'Seyran','Begrakyan',21,'M'),
    (41,'Gurgen','Samsonyan',20,'M'),
    (42,'Artur','Saghatelyan',19,'M'),
    (43,'Nane','Avagyan',21,'F'),
    (44,'Narek','Mushexyan',22,'M'),
    (45,'Anna','Mkhitaryan',21,'F'),
    (46,'Suren','Eghiazaryan',22,'M'),
    (47,'Asatur','Antonyan',22,'M'),
    (48,'Mushegh','Stepanyan',21,'M'),
    (49,'Arsen','Stepanyan',23,'M'),
    (50,'Nune','Grigoryan',20,'F');
	
	

CREATE TABLE IF NOT EXISTS student_country (
    student_id INT primary key,
	FOREIGN KEY (student_id) REFERENCES student_info(student_id),
    student_country VARCHAR,
    student_city VARCHAR
);
INSERT INTO student_country VALUES
    (1,'Armenia','Yeravan'),
    (2,'Armenia','Gyumri'),
    (3,'Armenia','ijevan'),
    (4,'Russia','Moscow'),
    (5,'Armenia','Yeravan'),
    (6,'Russia','Moscow'),
    (7,'Armenia','Jermuk'),
    (8,'Armenia','Yeravan'),
    (9,'India','Delhi'),
    (10,'India','Mumbai'),
    (11,'Armenia','Yeravan'),
    (12,'Armenia','Yeravan'),
    (13,'Armenia','Vanadzor'),
    (14,'Russia','Snk. Peterburg'),
    (15,'Armenia','Yeravan'),
    (16,'Armenia','Yeravan'),
    (17,'Armenia','Gyumri'),
    (18,'Armenia','Artashat'),
    (19,'Iran','Tegran'),
    (20,'Armenia','Yeravan'),
    (21,'Armenia','Gavar'),
    (22,'Armenia','Yerevan'),
    (23,'Armenia','Yerevan'),
    (24,'Armenia','Yerevan'),
    (25,'Russia','Doni Rostov'),
    (26,'Russia','Moscow'),
    (27,'Armenia','Dilijan'),
    (28,'Armenia','Sevan'),
    (29,'Armenia','Yerevan'),
    (30,'Armenia','Yerevan'),
    (31,'Armenia','Yerevan'),
    (32,'Armenia','Artashat'),
    (33,'Armenia','Ararat'),
    (34,'Armenia','Gyumri'),
    (35,'Armenia','Artashat'),
    (36,'Armenia','Artashat'),
    (37,'Armenia','Stepanavan'),
    (38,'Armenia','Sisian'),
    (39,'Armenia','Alaverdi'),
    (40,'Armenia','Hrazdan'),
    (41,'Armenia','Armavir'),
    (42,'Armenia','Metsamor'),
    (43,'Armenia','Artik'),
    (44,'Armenia','Akhuryan'),
    (45,'Armenia','Yerevan'),
    (46,'Armenia','Yerevan'),
    (47,'Armenia','Yerevan'),
    (48,'Armenia','Chambarak'),
    (49,'Armenia','Alaverdi'),
    (50,'Armenia','Kapan');

CREATE TABLE IF NOT EXISTS student_faculty (
    student_id serial primary key,
	FOREIGN KEY (student_id) REFERENCES student_info(student_id),
    student_faculty_name VARCHAR
);
INSERT INTO student_faculty VALUES
    (1,'Faculty of History'),
    (2,'Faculty of Physics'),
    (3,'Faculty of Physics'),
    (4,'Faculty of Law'),
    (5,'Faculty of Biology'),
    (6,'Faculty of Mathematics'),
    (7,'Faculty of Law'),
    (8,'Faculty of Radiophysics'),
    (9,'Faculty of Philosophy'),
    (10,'Faculty of Economics'),
    (11,'Faculty of Armenian Philbology'),
    (12,'Faculty of Informatics and Applied Mathematics'),
    (13,'Faculty of Sociology'),
    (14,'Faculty of Mathematics'),
    (15,'Faculty of Sociology'),
    (16,'Faculty of International Relations'),
    (17,'Faculty of Journalism'),
    (18,'Faculty of Mathematics'),
    (19,'Faculty of Law'),
    (20,'Faculty of Geography and Geology'),
    (21,'Faculty of Informatics and Applied Mathematics'),
    (22,'Faculty of Russian Philology'),
    (23,'Faculty of Economics'),
    (24,'Faculty of Mathematics'),
    (25,'Faculty of Chemistry'),
    (26,'Faculty of History'),
    (27,'Faculty of Biology'),
    (28,'Faculty of Sociology'),
    (29,'Faculty of Mathematics'),
    (30,'Faculty of European Languages and Communication'),
    (31,'Faculty of Armenian Philbology'),
    (32,'Faculty of Mathematics'),
    (33,'Faculty of International Relations'),
    (34,'Faculty of Biology'),
    (35,'Faculty of History'),
    (36,'Faculty of Radiophysics'),
    (37,'Faculty of Russian Philology'),
    (38,'Faculty of Law'),
    (39,'Faculty of Economics'),
    (40,'Faculty of Economics'),
    (41,'Faculty of Geography and Geology'),
    (42,'Faculty of Journalism'),
    (43,'Faculty of Russian Philology'),
    (44,'Faculty of Economics'),
    (45,'Faculty of Geography and Geology'),
    (46,'Faculty of International Relations'),
    (47,'Faculty of Economics'),
    (48,'Faculty of Mathematics'),
    (49,'Faculty of Mathematics'),
    (50,'Faculty of Law');

CREATE TABLE IF NOT EXISTS student_score (
    student_id serial primary key,
	FOREIGN KEY (student_id) REFERENCES student_info(student_id),
    math_score INT,
    programming_score INT,
    statistics_score INT
);
INSERT INTO student_score VALUES
    (1,15,10,12),
    (2,19,17,15),
    (3,20,19,18),
    (4,14,17,10),
    (5,16,12,17),
    (6,20,20,20),
    (7,16,15,14),
    (8,19,16,17),
    (9,14,14,10),
    (10,18,17,17),
    (11,18,17,16),
    (12,19,20,18),
    (13,14,15,15),
    (14,18,16,17),
    (15,17,17,17),
    (16,15,15,14),
    (17,15,15,17),
    (18,18,19,20),
    (19,18,16,16),
    (20,16,15,10),
    (21,18,18,18),
    (22,15,15,17),
    (23,19,18,18),
    (24,20,20,19),
    (25,17,19,15),
    (26,18,17,19),
    (27,17,17,17),
    (28,16,16,17),
    (29,19,18,15),
    (30,18,18,16),
    (31,15,15,10),
    (32,20,20,20),
    (33,16,16,16),
    (34,18,17,15),
    (35,16,19,14),
    (36,19,19,20),
    (37,15,17,17),
    (38,18,18,20),
    (39,20,20,19),
    (40,20,20,19),
    (41,17,17,14),
    (42,18,18,16),
    (43,16,17,17),
    (44,16,16,19),
    (45,18,17,17),
    (46,17,17,14),
    (47,18,17,17),
    (48,19,19,20),
    (49,19,20,20),
    (50,19,19,18);
	
CREATE TABLE IF NOT EXISTS student_year (
    student_id serial primary key,
	FOREIGN KEY (student_id) REFERENCES student_info(student_id),
    student_year INT,
    student_score NUMERIC
);
INSERT INTO student_year VALUES
    (1,3,12.33),
    (2,2,17),
    (3,2,19),
    (4,2,13.67),
    (5,4,15),
    (6,4,20),
    (7,3,15),
    (8,3,17.33),
    (9,1,12.67),
    (10,2,17.33),
    (11,2,17),
    (12,2,19),
    (13,5,14.67),
    (14,4,17),
    (15,2,17),
    (16,4,14.67),
    (17,1,15.67),
    (18,4,19),
    (19,3,16.67),
    (20,4,13.67),
    (21,4,18),
    (22,1,15.67),
    (23,3,18.33),
    (24,2,19.67),
    (25,3,17),
    (26,3,18),
    (27,1,17),
    (28,2,16.33),
    (29,5,17.33),
    (30,3,17.33),
    (31,1,13.33),
    (32,2,20),
    (33,4,16),
    (34,2,16.67),
    (35,5,16.33),
    (36,4,19.33),
    (37,3,16.33),
    (38,4,18.67),
    (39,5,19.67),
    (40,3,19.67),
    (41,3,16),
    (42,2,17.33),
    (43,3,16.67),
    (44,4,17),
    (45,3,17.33),
    (46,4,16),
    (47,3,17.33),
    (48,3,19.33),
    (49,5,19.67),
    (50,3,18.67);
