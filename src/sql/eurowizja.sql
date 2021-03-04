DROP DATABASE IF EXISTS eurowizja;
CREATE DATABASE eurowizja COLLATE = utf8_general_ci;
USE eurowizja;

CREATE TABLE roczniki (
    rok_id int NOT NULL AUTO_INCREMENT,
    rok int,
    slogan varchar (50),
    miasto_host varchar (50),
    uczestnik_id int, /* id tego uczestnika, który wygrał */
    piosenka_id int, /* id zwycięzkiej piosenki */

    PRIMARY KEY(rok_id)
);

CREATE TABLE uczestnicy (
    uczestnik_id int NOT NULL AUTO_INCREMENT,
    uczestnik varchar (50),
    kraj_id int,
    piosenka_id int,
    rok_id int,

    PRIMARY KEY(uczestnik_id)
);

CREATE TABLE kraje (
    kraj_id int NOT NULL AUTO_INCREMENT,
    kraj varchar(50),
    stolica varchar (50),
    kontynent varchar (50),

    PRIMARY KEY(kraj_id)
);

CREATE TABLE piosenki (
    piosenka_id int NOT NULL AUTO_INCREMENT,
    tytul varchar(50),
    jezyk varchar(50),
    uczestnik_id int,
    rok_id int,

    PRIMARY KEY(piosenka_id)
);

CREATE TABLE wyniki (
    wynik_id int NOT NULL AUTO_INCREMENT,
    punkty int,
    
    PRIMARY KEY(wynik_id)
);


CREATE TABLE eliminacje (
    eliminacje_id int NOT NULL AUTO_INCREMENT,
    etap varchar (50),
    /* etapem moze byc połfinal1, półfinał2 lub finał */
    uczestnik_id int,
    wynik_id int,
    daty_id int,
    rok_id int,

    PRIMARY KEY(eliminacje_id)
);


CREATE TABLE daty (
    daty_id int NOT NULL AUTO_INCREMENT,
    data_ varchar (50),
    rok_id int,

    PRIMARY KEY(daty_id)
);

INSERT INTO roczniki (rok, slogan, miasto_host) VALUES ('2017', 'Celebrate Diversity', 'Kijów'), ('2018', 'All Aboard!', 'Lizbona'), ('2019', 'Dare to Dream', 'Tel Awiw-Jafa');

-- półfinał 1
INSERT INTO eliminacje (etap, uczestnik_id, wynik_id, rok_id, daty_id) VALUES
('półfinał 1', '1', '1', '1', '1'), ('półfinał 1', '2', '2', '1', '1'), ('półfinał 1', '3', '3', '1', '1'), ('półfinał 1', '4', '4', '1', '1'), ('półfinał 1', '5', '5', '1', '1'), 
('półfinał 1', '6', '6', '1', '1'), ('półfinał 1', '7', '7', '1', '1'), ('półfinał 1', '8', '8', '1', '1'), ('półfinał 1', '39', '9', '1', '1'), ('półfinał 1', '19', '10', '1', '1'), 
('półfinał 1', '38', '11', '1', '1'), ('półfinał 1', '30', '12', '1', '1'), ('półfinał 1', '27', '13', '1', '1'), ('półfinał 1', '26', '14', '1', '1'), ('półfinał 1', '34', '15', '1', '1'), 
('półfinał 1', '17', '16', '1', '1'), ('półfinał 1', '22', '17', '1', '1'), ('półfinał 1', '20', '18', '1', '1'), ('półfinał 1', '43', '58', '2', '2'), ('półfinał 1', '44', '59', '2', '2'), 
('półfinał 1', '45', '60', '2', '2'), ('półfinał 1', '46', '61', '2', '2'), ('półfinał 1', '47', '62', '2', '2'), ('półfinał 1', '48', '11', '2', '2'), ('półfinał 1', '49', '63', '2', '2'), 
('półfinał 1', '50', '64', '2', '2'), ('półfinał 1', '51', '65', '2', '2'), ('półfinał 1', '71', '66', '2', '2'), ('półfinał 1', '73', '67', '2', '2'), ('półfinał 1', '63', '68', '2', '2'), 
('półfinał 1', '81', '25', '2', '2'), ('półfinał 1', '77', '69', '2', '2'), ('półfinał 1', '65', '70', '2', '2'), ('półfinał 1', '76', '40', '2', '2'), ('półfinał 1', '83', '27', '2', '2'), 
('półfinał 1', '84', '71', '2', '2'), ('półfinał 1', '64', '72', '2', '2'), ('półfinał 1', '86', '106', '3', '3'), ('półfinał 1', '87', '97', '3', '3'), ('półfinał 1', '88', '107', '3', '3'), 
('półfinał 1', '89', '45', '3', '3'), ('półfinał 1', '90', '108', '3', '3'), ('półfinał 1', '91', '109', '3', '3'), ('półfinał 1', '92', '31', '3', '3'), ('półfinał 1', '111', '110', '3', '3'), 
('półfinał 1', '103', '111', '3', '3'), ('półfinał 1', '110', '112', '3', '3'), ('półfinał 1', '119', '113', '3', '3'), ('półfinał 1', '123', '114', '3', '3'), ('półfinał 1', '125', '115', '3', '3'), 
('półfinał 1', '117', '116', '3', '3'), ('półfinał 1', '118', '117', '3', '3'), ('półfinał 1', '113', '118', '3', '3'), ('półfinał 1', '107', '8', '3', '3');


-- półfinał 2
INSERT INTO eliminacje (etap, uczestnik_id, wynik_id, rok_id, daty_id) VALUES
('półfinał 2', '9', '19', '1', '4'), ('półfinał 2', '10', '20', '1', '4'), ('półfinał 2', '11', '21', '1', '4'), ('półfinał 2', '12', '22', '1', '4'), ('półfinał 2', '13', '23', '1', '4'), 
('półfinał 2', '14', '24', '1', '4'), ('półfinał 2', '15', '25', '1', '4'), ('półfinał 2', '42', '26', '1', '4'), ('półfinał 2', '19', '27', '1', '4'), ('półfinał 2', '21', '28', '1', '4'), 
('półfinał 2', '35', '29', '1', '4'), ('półfinał 2', '23', '30', '1', '4'), ('półfinał 2', '25', '31', '1', '4'), ('półfinał 2', '28', '32', '1', '4'), ('półfinał 2', '32', '33', '1', '4'), 
('półfinał 2', '18', '34', '1', '4'), ('półfinał 2', '40', '35', '1', '4'), ('półfinał 2', '16', '36', '1', '4'), ('półfinał 2', '52', '73', '2', '5'), ('półfinał 2', '53', '74', '2', '5'), 
('półfinał 2', '54', '75', '2', '5'), ('półfinał 2', '55', '76', '2', '5'), ('półfinał 2', '56', '77', '2', '5'), ('półfinał 2', '57', '64', '2', '5'), ('półfinał 2', '58', '78', '2', '5'), 
('półfinał 2', '59', '23', '2', '5'), ('półfinał 2', '66', '79', '2', '5'), ('półfinał 2', '69', '67', '2', '5'), ('półfinał 2', '74', '69', '2', '5'), ('półfinał 2', '78', '26', '2', '5'), 
('półfinał 2', '82', '80', '2', '5'), ('półfinał 2', '75', '81', '2', '5'), ('półfinał 2', '79', '82', '2', '5'), ('półfinał 2', '80', '83', '2', '5'), ('półfinał 2', '60', '84', '2', '5'), 
('półfinał 2', '62', '71', '2', '5'), ('półfinał 2', '93', '119', '3', '6'), ('półfinał 2', '94', '120', '3', '6'), ('półfinał 2', '95', '35', '3', '6'), ('półfinał 2', '96', '62', '3', '6'), 
('półfinał 2', '97', '121', '3', '6'), ('półfinał 2', '98', '122', '3', '6'), ('półfinał 2', '99', '58', '3', '6'), ('półfinał 2', '100', '123', '3', '6'), ('półfinał 2', '106', '18', '3', '6'), 
('półfinał 2', '109', '38', '3', '6'), ('półfinał 2', '124', '124', '3', '6'), ('półfinał 2', '101', '39', '3', '6'), ('półfinał 2', '102', '125', '3', '6'), ('półfinał 2', '105', '126', '3', '6'), 
('półfinał 2', '115', '127', '3', '6'), ('półfinał 2', '112', '128', '3', '6'), ('półfinał 2', '108', '129', '3', '6'), ('półfinał 2', '120', '130', '3', '6');



-- finał
INSERT INTO eliminacje (etap, uczestnik_id, wynik_id, rok_id, daty_id) VALUES
('finał', '16', '37', '1', '7'), ('finał', '17', '38', '1', '7'), ('finał', '18', '14', '1', '7'), ('finał', '19', '39', '1', '7'), ('finał', '20', '40', '1', '7'), 
('finał', '21', '8', '1', '7'), ('finał', '22', '41', '1', '7'), ('finał', '23', '24', '1', '7'), ('finał', '24', '42', '1', '7'), ('finał', '25', '43', '1', '7'), 
('finał', '26', '44', '1', '7'), ('finał', '27', '45', '1', '7'), ('finał', '28', '46', '1', '7'), ('finał', '29', '47', '1', '7'), ('finał', '30', '43', '1', '7'), 
('finał', '31', '48', '1', '7'), ('finał', '32', '49', '1', '7'), ('finał', '33', '50', '1', '7'), ('finał', '34', '51', '1', '7'), ('finał', '35', '52', '1', '7'), 
('finał', '36', '53', '1', '7'), ('finał', '37', '17', '1', '7'), ('finał', '38', '54', '1', '7'), ('finał', '39', '55', '1', '7'), ('finał', '40', '56', '1', '7'), 
('finał', '41', '57', '1', '7'), ('finał', '60', '85', '2', '8'), ('finał', '61', '86', '2', '8'), ('finał', '62', '38', '2', '8'), ('finał', '63', '87', '2', '8'), 
('finał', '64', '88', '2', '8'), ('finał', '65', '89', '2', '8'), ('finał', '66', '90', '2', '8'), ('finał', '67', '37', '2', '8'), ('finał', '68', '91', '2', '8'), 
('finał', '69', '92', '2', '8'), ('finał', '70', '93', '2', '8'), ('finał', '71', '94', '2', '8'), ('finał', '72', '47', '2', '8'), ('finał', '73', '95', '2', '8'), 
('finał', '74', '96', '2', '8'), ('finał', '75', '2', '2', '8'), ('finał', '76', '97', '2', '8'), ('finał', '77', '98', '2', '8'), ('finał', '78', '99', '2', '8'), 
('finał', '79', '100', '2', '8'), ('finał', '80', '39', '2', '8'), ('finał', '81', '101', '2', '8'), ('finał', '82', '102', '2', '8'), ('finał', '83', '103', '2', '8'), 
('finał', '84', '104', '2', '8'), ('finał', '85', '105', '2', '8'), ('finał', '101', '74', '3', '9'), ('finał', '102', '131', '3', '9'), ('finał', '103', '124', '3', '9'), 
('finał', '104', '132', '3', '9'), ('finał', '105', '9', '3', '9'), ('finał', '106', '45', '3', '9'), ('finał', '107', '43', '3', '9'), ('finał', '108', '133', '3', '9'), 
('finał', '109', '42', '3', '9'), ('finał', '110', '134', '3', '9'), ('finał', '111', '135', '3', '9'), ('finał', '112', '136', '3', '9'), ('finał', '113', '137', '3', '9'), 
('finał', '114', '138', '3', '9'), ('finał', '115', '139', '3', '9'), ('finał', '116', '80', '3', '9'), ('finał', '117', '62', '3', '9'), ('finał', '118', '4', '3', '9'), 
('finał', '119', '140', '3', '9'), ('finał', '120', '141', '3', '9'), ('finał', '121', '134', '3', '9'), ('finał', '122', '142', '3', '9'), ('finał', '123', '143', '3', '9'), 
('finał', '124', '144', '3', '9'), ('finał', '125', '145', '3', '9'), ('finał', '126', '146', '3', '9');


-- tabela zawiera wszystkie wyniki z połfinałów i finałów 
INSERT INTO wyniki (punkty) VALUES
('227'), ('99'), ('160'), ('76'), ('165'), ('56'), ('92'), ('150'), ('370'), ('115'), 
('119'), ('291'), ('60'), ('83'), ('164'), ('152'), ('36'), ('21'), ('98'), ('147'), 
('69'), ('55'), ('174'), ('200'), ('231'), ('101'), ('86'), ('1'), ('141'), ('189'), 
('97'), ('110'), ('403'), ('42'), ('85'), ('207'), ('39'), ('64'), ('93'), ('79'), 
('374'), ('334'), ('77'), ('758'), ('120'), ('128'), ('173'), ('5'), ('158'), ('111'), 
('68'), ('282'), ('6'), ('363'), ('344'), ('615'), ('135'), ('94'), ('15'), ('162'), 
('91'), ('232'), ('283'), ('65'), ('201'), ('177'), ('24'), ('63'), ('81'), ('108'), 
('179'), ('262'), ('266'), ('107'), ('117'), ('28'), ('204'), ('235'), ('212'), ('11'), 
('106'), ('254'), ('40'), ('132'), ('130'), ('61'), ('181'), ('342'), ('245'), ('144'), 
('48'), ('113'), ('340'), ('184'), ('281'), ('226'), ('46'), ('166'), ('209'), ('274'), 
('529'), ('121'), ('136'), ('436'), ('308'), ('149'), ('23'), ('167'), ('242'), ('122'), 
('156'), ('70'), ('62'), ('261'), ('221'), ('198'), ('51'), ('185'), ('49'), ('16'), 
('50'), ('71'), ('238'), ('157'), ('217'), ('96'), ('210'), ('280'), ('239'), ('224'), 
('90'), ('24'), ('305'), ('105'), ('109'), ('498'), ('74'), ('35'), ('331'), ('31'), 
('302'), ('472'), ('89'), ('364'), ('284'), ('54');



-- daty wszystkich półfinałów1, półfinałów2 i finałów
INSERT INTO daty (data_, rok_id) VALUES 
('9 maj', '1'), ('8 maj', '2'), ('14 maj','3'), 
('11 maj','1'), ('10 maj','2'), ('16 maj','3'),
('13 maj','1'), ('12 maj','2'), ('18 maj','3');


-- wszystkie kraje biorące udział w eurowizji
INSERT INTO kraje (kraj, kontynent, stolica) VALUES
('Azerbejdżan', 'Europa', 'Baku'), ('Islandia', 'Europa', 'Reykjavík'), ('Belgia', 'Europa', 'Bruksela'), ('Białoruś', 'Europa', 'Mińsk'), ('Macedonia', 'Europa', 'Skopje'), 
('Chorwacja', 'Europa', 'Zagrzeb'), ('Grecja', 'Europa', 'Ateny'), ('Armenia', 'Europa', 'Yerevan'), ('Szwajcaria', 'Europa', 'Berno'), ('Rumunia', 'Europa', 'Bukareszt'), 
('San Marino', 'Europa', 'San Marino'), ('Rosja', 'Europa', 'Moskwa'), ('Gruzja', 'Europa', 'Tbilisi'), ('Polska', 'Europa', 'Warszawa'), ('Malta', 'Europa', 'Valletta'), 
('Łotwa', 'Europa', 'Ryga'), ('Czarnogóra', 'Europa', 'Podgorica'), ('Ukraina', 'Europa', 'Kijów'), ('Hiszpania', 'Europa', 'Madryt'), ('Słowenia', 'Europa', '‎Lublana'), 
('Litwa', 'Europa', 'Wilno'), ('Austria', 'Europa', 'Wiedeń'), ('Estonia', 'Europa', 'Talin'), ('Norwegia', 'Europa', 'Oslo'), ('Portugalia', 'Europa', 'Lizbona'), 
('Wielka Brytania', 'Europa', 'Londyn'), ('Serbia', 'Europa', 'Belgrad'), ('Niemcy', 'Europa', 'Berlin'), ('Albania', 'Europa', 'Tirana'), ('Francja', 'Europa', 'Paryż'), 
('Czechy', 'Europa', 'Praga'), ('Dania', 'Europa', 'Kopenhaga'), ('Australia', 'Australia', 'Canberra'), ('Finlandia', 'Europa', 'Helsinki'), ('Bułgaria', 'Europa', 'Sofia'), 
('Mołdawia', 'Europa', 'Kiszyniów'), ('Szwecja', 'Europa', 'Sztokholm'), ('Węgry', 'Europa', 'Budapeszt'), ('Izrael', 'Europa', 'Jerozolima'), ('Holandia', 'Europa', 'Amsterdam‎'), 
('Irlandia', 'Europa', 'Dublin'), ('Cypr', 'Europa', 'Nikozja'), ('Włochy', 'Europa', 'Rzym');


-- uczestnicy rok 2017 
INSERT INTO uczestnicy (uczestnik, kraj_id, rok_id, piosenka_id) VALUES
('Tamara Gaczecziladze', '13', '1', '1'), ('Lindita', '29', '1', '2'), ('Slavko Kalezić', '17', '1', '3'), ('Norma John', '34', '1', '4'), ('Svala', '2', '1', '5'), 
('Martina Bárta', '31', '1', '6'),  ('Omar Naber', '20', '1', '7'), ('Triana Park', '16', '1', '8'), ('Tijana Bogićević', '27', '1', '9'), ("Jana Burčeska", '5', '1', '10'), 
('Claudia Faniello', '15', '1', '11'), ('Brendan Murray', '41', '1', '12'), ('Valentina Monetta i Jimmie Wilson', '11', '1', '13'),  ('Timebelle', '9', '1', '14'), ('Koit Toome and Laura', '23', '1', '15'),  
('IMRI', '39', '1', '16'), ("Kasia Moś", "14", '1', '17'), ('Naviband', "4", '1', '18'), ('Nathan Trent', '22', '1', '19'), ('Artsvik', '8', '1', '20'), 
('OG3NE', '40', '1', '21'), ('Sunstroke Project', '36', '1', '22'),  ('Joci Pápai', '38', '1', '23'), ('Francesco Gabbani', '43', '1', '24'), ('Anja', '32', '1', '25'), 
('Salvador Sobral', '25', '1', '26'),  ('Dihaj', '1', '1', '27'), ('Jacques Houdek', '6', '1', '28'), ('Isaiah', '33', '1', '29'),('Demy', '7', '1', '30'), 
('Manel Navarro', '19', '1', '31'),  ('JOWST', '24', '1', '32'), ('Lucie Jones', '26', '1', '33'), ('Hovig', '42', '1', '34'), ('Ilinca ft. Alex Florea', '10', '1', '35'),  
('Levina', '28', '1', '36'), ('O.Torvald', '18', '1', '37'), ('Blanche', '3', '1', '38'), ('Robin Bengtsson', '37', '1', '39'),  ('Kristian Kostov', '35', '1', '40'), 
('Alma', '30', '1', '41'), ('Fusedmarc', '21', '1', '42');


/* uczestnicy rok 2018 */
INSERT INTO uczestnicy (uczestnik, kraj_id, rok_id, piosenka_id) VALUES
('Aisel', '1', '2', '43'), ("Ari Olafsson", '2', '2', '44'), ('Sennek', '3', '2', '45'), ('Alekseev', '4', '2', '46'), ('Eye Cue', '5', '2', '47'), 
('Franka', '6', '2', '48'), ('Yianna Terzi', '7', '2', '49'), ('Sevak Khanagyan', '8', '2', '50'), ('ZiBBZ', '9', '2', '51'), ('The Humans', '10', '2', '52'), 
('Jessika feat. Jenifer Brening', '11', '2', '53'), ('Julia Samoylova', '12', '2', '54'), ('Ethno-Jazz Band Iriao', '13', '2', '55'), ('Gromee feat. Lukas Meijer', '14', '2', '56'), ('Christabelle', '15', '2', '57'), 
('Laura Rizzotto', '16', '2', '58'), ('Vanja Radovanovic', '17', '2', '59'), ('Mélovin', '18', '2', '60'), ('Amaia & Alfred', '19', '2', '61'), ('Lea Sirk', '20', '2', '62'), 
('Ieva Zasimauskaitė', '21', '2', '63'), ('Cesár Sampson', '22', '2', '64'), ('Elina Nechayeva', '23', '2', '65'), ('Alexander Rybak', '24', '2', '66'), ('Cláudia Pascoal', '25', '2', '67'), 
('SuRie', '26', '2', '68'), ('Sanja Ilic & Balkanika', '27', '2', '69'), ('Michael Schulte', '28', '2', '70'), ('Eugent Bushpepa', '29', '2', '71'), ('Madame Monsieur', '30', '2', '72'), 
('Mikolas Josef', '31', '2', '73'), ('Rasmussen', '32', '2', '74'), ('Jessica Mauboy', '33', '2', '75'), ('Saara Aalto', '34', '2', '76'), ('Equinox', '35', '2', '77'), 
('DoReDoS', '36', '2', '78'), ('Benjamin Ingrosso', '37', '2', '79'), ('AWS', '38', '2', '80'), ('Netta', '39', '2', '81'), ('Waylon', '40', '2', '82'), 
('Ryan O.Shaughnessy', '41', '2', '83'), ('Eleni Foureira', '42', '2', '84'), ('Ermal Meta & Fabrizio Moro', '43', '2', '85');


/* uczestnicy rok 2019 */
INSERT INTO uczestnicy (uczestnik, kraj_id, rok_id, piosenka_id) VALUES
('D mol', '17', '3', '86'), ('Darude feat. Sebastian Rejman', '34', '3', '87'), ('Tulia', '14', '3', '88'), ('Joci Pápai', '38', '3', '89'), ('Eliot', '3', '3', '90'), 
('Oto Nemsadze', '13', '3', '91'), ('Conan Osiris', '25', '3', '92'), ('Srbuk', '8', '3', '93'), ('Sarah McTernan', '41', '3', '94'), ('Anna Odobescu', '36', '3', '95'), 
('Carousel', '16', '3', '96'), ('Ester Peony', '10', '3', '97'), ('PÆNDA', '22', '3', '98'), ('Roko', '6', '3', '99'), ('Jurij Veklenko', '21', '3', '100'), 
('Michela', '15', '3', '101'), ('Jonida Maliqi', '29', '3', '102'), ('Lake Malawi', '31', '3', '103'), ('S!sters', '28', '3', '104'), ('Sergey Lazarev', '12', '3', '105'), 
('Leonora', '32', '3', '106'), ('Serhat', '11', '3', '107'), ('Tamara Todevska', '5', '3', '108'), ('John Lundvik', '37', '3', '109'), ('Zala Kralj & Gašper Šantl', '20', '3', '110'), 
('Tamta', '42', '3', '111'), ('Duncan Laurence', '40', '3', '112'), ('Katerine Duska', '7', '3', '113'), ('Kobi Marimi', '39', '3', '114'), ('KEiiNO', '24', '3', '115'), 
('Michael Rice', '26', '3', '116'), ('Hatari', '2', '3', '117'), ('Victor Crone', '23', '3', '118'), ('ZENA', '4', '3', '119'), ('Chingiz', '1', '3', '120'), 
('Bilal Hassani', '30', '3', '121'), ('Mahmood', '43', '3', '122'), ('Nevena Božović', '27', '3', '123'), ('Luca Hänni', '9', '3', '124'), ('Kate Miller-Heidke', '33', '3', '125'), 
('Miki', '19', '3', '126');


/* piosenki rok 2017 */
INSERT INTO piosenki (tytul, jezyk, uczestnik_id, rok_id) VALUES
('Keep the Faith', 'angielski', '1', '1'), ('World', 'angielski', '2', '1'), ("Space", 'angielski', '3', '1'), ("Blackbird", 'angielski', '4', '1'), ("Paper", 'angielski', '5', '1'), 
("My Turn", 'angielski', '6', '1'), ("On My Way", 'angielski', '7', '1'), ("Line", 'angielski', '8', '1'), ("In Too Deep", 'angielski', '9', '1'), ("Dance Alone", 'angielski', '10', '1'), 
("Breathlessly", 'angielski', '11', '1'), ("Dying to Try", 'angielski', '12', '1'), ("Spirit of the Night", 'angielski', '13', '1'), ("Apollo", 'angielski', '14', '1'), ("Verona", 'angielski', '15', '1'), 
("I Feel Alive", 'angielski', '16', '1'), ("Flashlight", 'angielski', '17', '1'), ("Story of My Life", 'białorusiński', '18', '1'), ("Running on Air", 'angielski', '19', '1'), ("Fly with Me", 'angielski', '20', '1'), 
("Lights and Shadows", 'angielski', '21', '1'), ("Hey, Mamma!", 'angielski', '22', '1'), ("Origo", 'węgierski', '23', '1'), ("Occidentali s Karma", 'włoski', '24', '1'), ("Where I Am", 'angielski', '25', '1'), 
("Amar pelos dois", 'portugalski', '26', '1'), ("Skeletons", 'angielski', '27', '1'), ("My Friend", "angielski, włoski", '28', '1'), ("Don t Come Easy", 'angielski', '29', '1'), ("This Is Love", 'angielski', '30', '1'), 
('Do It for Your Lover', "hiszpański, angielski", '31', '1'), ("Grab the Moment", 'angielski', '32', '1'), ("Never Give Up on You", 'angielski', '33', '1'), ("Gravity", 'angielski', '34', '1'), ("Yodel It!", 'angielski', '35', '1'), 
("Perfect Life", 'angielski', '36', '1'), ("Time", 'angielski', '37', '1'), ("City Lights", 'angielski', '38', '1'), ("I Can t Go On", 'angielski', '39', '1'), ("Beautiful Mess", 'angielski', '40', '1'), 
("Requiem", "francuski,  angielski", '41', '1'), ("Rain of Revolution", 'angielski', '42', '1');


/* piosenki 2018 */
INSERT INTO piosenki (tytul, jezyk, uczestnik_id, rok_id) VALUES
('X My Heart', 'angielski', '43', '2'), ("Our Choice", 'angielski', '44', '2'), ("A Matter of Time", 'angielski', '45', '2'), ("Forever", 'angielski', '46', '2'), ("Lost and Found", 'angielski', '47', '2'), 
("Crazy", 'angielski', '48', '2'), ("Oniro mou", 'grecki', '49', '2'), ("Qami", 'armeński', '50', '2'), ("Stones", 'angielski', '51', '2'), ("Goodbye", 'angielski', '52', '2'), 
("Who We Are", 'angielski', '53', '2'), ("I Won t Break", 'angielski', '54', '2'), ("For You", 'gruziński', '55', '2'), ("Light Me Up", 'angielski', '56', '2'), ("Taboo", 'angielski', '57', '2'), 
("Funny Girl", 'angielski', '58', '2'), ("Inje", 'czarnogórski', '59', '2'), ("Under the Ladder", 'angielski', '60', '2'), ("Tu canción", 'hiszpański', '61', '2'), ('Hvala, ne!', 'słoweński', '62', '2'), 
("When We are Old", 'angielski', '63', '2'), ("Nobody but You", 'angielski', '64', '2'), ("La forza", 'włoski', '65', '2'), ("That s How You Write a Song", 'angielski', '66', '2'), ("O jardim",  'portugalski', '67', '2'), 
("Storm", 'angielski', '68', '2'), ("Nova deca",  'serbski', '69', '2'), ("You Let Me Walk Alone", 'angielski', '70', '2'), ("Mall", 'albański', '71', '2'), ("Mercy", 'francuski', '72', '2'), 
("Lie to Me", 'angielski', '73', '2'), ("Higher Ground", 'angielski', '74', '2'), ("We Got Love", 'angielski', '75', '2'), ("Monsters", 'angielski', '76', '2'), ("Bones", 'angielski', '77', '2'), 
("My Lucky Day", 'angielski', '78', '2'), ("Dance You Off", 'angielski', '79', '2'), ('Viszlát nyár', 'węgierski', '80', '2'), ("Toy", 'angielski', '81', '2'), ("Outlaw in Em", 'angielski', '82', '2'), 
('Together', 'angielski', '83', '2'), ("Fuego", 'angielski', '84', '2'), ("Non mi avete fatto niente", 'włoski', '85', '2');


/* piosenki 2019 */
INSERT INTO piosenki (tytul, jezyk, uczestnik_id, rok_id) VALUES
("Heaven", 'angielski', '86', '3'), ("Look Away", 'angielski', '87', '3'), ("Fire of Love (Pali się)", "polski,  angielski", '88', '3'), ('Az én apám', 'węgierski', '89', '3'), ('Wake Up', 'angielski', '90', '3'), 
('Keep on Going', 'gruziński', '91', '3'), ('Telemóveis', 'portugalski', '92', '3'), ('Walking Out', 'angielski', '93', '3'), ("22", 'angielski', '94', '3'), ('Stay', 'angielski', '95', '3'), 
('That Night', 'angielski', '96', '3'), ('On a Sunday', 'angielski', '97', '3'), ('Limits', 'angielski', '98', '3'), ('The Dream', 'angielski, chorwacji', '99', '3'),  ('Run with the Lions', 'angielski', '100', '3'), 
('Chameleon', 'angielski', '101', '3'), ('Ktheju tokës', 'albański', '102', '3'), ('Friend of a Friend', 'angielski', '103', '3'), ('Sister', 'angielski', '104', '3'), ('Scream', 'angielski', '105', '3'), 
('Love Is Forever', 'angielski, francuski', '106', '3'), ('Say Na Na Na', 'angielski', '107', '3'), ('Proud', 'angielski', '108', '3'), ('Too Late for Love', 'angielski', '109', '3'), ('Sebi', 'słoweński', '110', '3'), 
('Replay', 'angielski', '111', '3'), ('Arcade', 'angielski', '112', '3'), ('Better Love', 'angielski', '113', '3'), ('Home', 'angielski', '114', '3'), ('Spirit in the Sky', 'angielski', '115', '3'), 
('Bigger than Us', 'angielski', '116', '3'), ('Hatrið mun sigra', 'islandzki', '117', '3'), ('Storm', 'angielski', '118', '3'), ('Like It', 'angielski', '119', '3'), ('Truth', 'angielski', '120', '3'), 
('Roi', 'francuski, angielski', '121', '3'), ('Soldi', 'włoski', '122', '3'), ('Kruna', 'serbski', '123', '3'), ('She Got Me', 'angielski', '124', '3'), ('Zero Gravity', 'angielski', '125', '3'), 
('La venda', 'hiszpański', '126', '3');


UPDATE roczniki SET uczestnik_id = 26 WHERE rok_id = 1;
UPDATE roczniki SET piosenka_id = 26 WHERE rok_id = 1;

UPDATE roczniki SET uczestnik_id = 81 WHERE rok_id = 2;
UPDATE roczniki SET piosenka_id = 81 WHERE rok_id = 2;

UPDATE roczniki SET uczestnik_id = 112 WHERE rok_id = 3;
UPDATE roczniki SET piosenka_id = 112 WHERE rok_id = 3;


ALTER TABLE uczestnicy ADD CONSTRAINT uczestnik_rocznik_fk FOREIGN KEY(rok_id) REFERENCES roczniki(rok_id);
ALTER TABLE uczestnicy ADD CONSTRAINT uczestnik_kraj_fk FOREIGN KEY(kraj_id) REFERENCES kraje(kraj_id);

ALTER TABLE piosenki ADD CONSTRAINT piosenka_rocznik_fk FOREIGN KEY(rok_id) REFERENCES roczniki(rok_id);

ALTER TABLE daty ADD CONSTRAINT daty_rocznik_fk FOREIGN KEY(rok_id) REFERENCES roczniki(rok_id);

ALTER TABLE eliminacje ADD CONSTRAINT eliminacje_uczestnik_fk FOREIGN KEY(uczestnik_id) REFERENCES uczestnicy(uczestnik_id);
ALTER TABLE eliminacje ADD CONSTRAINT eliminacje_rocznik_fk FOREIGN KEY(rok_id) REFERENCES roczniki(rok_id);
ALTER TABLE eliminacje ADD CONSTRAINT eliminacje_wynik_fk FOREIGN KEY(wynik_id) REFERENCES wyniki(wynik_id);
ALTER TABLE eliminacje ADD CONSTRAINT eliminacje_data_fk FOREIGN KEY(daty_id) REFERENCES daty(daty_id);


CREATE USER 'eurowizja'@'localhost' IDENTIFIED BY 'eurowizja';
GRANT ALL PRIVILEGES ON eurowizja.* TO 'eurowizja'@'localhost';
FLUSH PRIVILEGES;
