DROP TABLE IF EXISTS faction;
DROP TABLE IF EXISTS pilot;
DROP TABLE IF EXISTS ship;

CREATE TABLE faction (
    faction_id int primary key auto_increment,
    fac_name varchar(255) unique,
    fac_homesystem varchar(255),
    fac_description varchar(255),
    wins int DEFAULT 0,
    losses int DEFAULT 0
)

CREATE TABLE pilot (
    pilot_id int primary key auto_increment,
    pilot_name varchar(255) unique,
    pilot_crime varchar(255),
    ship int foreign key references ship(ship_id),
    wins int DEFAULT 0,
    losses int DEFAULT 0,
    faction int foreign key references faction(faction_id)
);

CREATE TABLE ship (
    ship_id int primary key,
    ship_name varchar(255),
    weapon_name varchar(255),
    health int,
    speed int,
    damage int
);

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Booger Test', 'Jaywalking', 1);
INSERT INTO ship (ship_name, weapon_name, health, speed, damage) VALUES 
('Booger Ship', 'Fart Stick', 100, 50, 10);

/*
The following are all the predetermined factions that should initialize with the database
17 total factions
 */
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Tau Ceti Yetis', 'Tau Ceti', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Arcturus Marauders', 'Arcturus', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('The Archambaults', 'Poitou', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('LP 944-020 1337', 'LP 944-020', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Ice Storm Squad', 'Luyten''s Star', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Free Company', '61 Cygni', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Oasis Gigafighters Sponsored by Coffee El Rancho''s Subwiches Grill', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Faraday Rocksteadies', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Westerfield Catamounts', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Vo Starcrushers', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Ross Ringleaders', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Ganglion Horizons', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Fadden Veli Brotherhood', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Ray City Funk', 'Ray City Station, Sol', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Wolf Tide', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Argera Redeemers', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('The Legacy', '', 'where all the dead pilots go...');

/*
Pilots for Tau Ceti
*/
