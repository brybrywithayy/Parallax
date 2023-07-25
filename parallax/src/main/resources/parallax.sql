DROP TABLE IF EXISTS faction;
DROP TABLE IF EXISTS pilot;
DROP TABLE IF EXISTS ship;

CREATE TABLE faction (
    faction_id int primary key serial,
    fac_name varchar(255) unique,
    fac_homesystem varchar(255),
    fac_description varchar(255),
    wins int DEFAULT 0,
    losses int DEFAULT 0
)

CREATE TABLE pilot (
    pilot_id int primary key serial,
    pilot_name varchar(255) unique,
    pilot_crime varchar(255),
    ship int foreign key references ship(ship_id),
    wins int DEFAULT 0,
    losses int DEFAULT 0,
    faction int foreign key references faction(faction_id)
);

CREATE TABLE ship (
    ship_id int primary key serial,
    ship_name varchar(255),
    weapon_name varchar(255),
    health int DEFAULT 100,
    speed int DEFAULT 50,
    damage int DEFAULT 10
);

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
Pilots for Tau Ceti and their ships
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Judge O''Pizza', 'Uncooked dough', 1);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Pasta Fazool', 'Mac Blaster');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Trinidad Chasm', 'Jaywalking', 2);
INSERT INTO ship (ship_name, weapon_name) VALUES ('The Depths', 'Abysmo');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Erasmus Zementmisch', 'Talked during jury duty', 3);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Sidewalk Sale', 'Rubblestone Rock');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Leonna Moon', 'Forged backstage passes', 4);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Waxin on Wanin', 'Sea of Cold');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Rosa Cavador', 'Kinked a hose and sprayed her brother in the face', 5);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Knockout', 'Hose Em Down');

/*
Pilots and ships for Arcturus Marauders
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Halfsa Downs', 'Gambling for children', 6);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Gamblin'' Man', 'Snake Eyes');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Penny Churg', 'Mugging, but for a camera', 7);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Mr. Churg', 'Quarters in a Sock');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Big League Ruby', 'Tea-bagged a person in real life', 8);
INSERT INTO ship (ship_name, weapon_name) VALUES ('The Dugout', 'Grand Slam');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Terry "Teri" Lee', 'Slept on the roof of a senator''s house', 9);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Clamma Slamma', 'Sunday Jamma');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Brooke Rivera', 'Sold gold without a permit', 10);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Bahama Mama', 'Silt Management');


/*
Pilots and ships for the Archambaults
*/


/*
Pilots and ships for LP 944-020 1337
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('DJ Tryptamine', 'Created a spark between two people, ultimately killing them both', 11);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Brain-o-Vision', 'Neuro Tricks');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('EKG-205 LIFESCAN', 'Killed someone by discharging', 12);
INSERT INTO ship (ship_name, weapon_name) VALUES ('CONVEYENCE_MACHINE', 'SHOCKER');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Petrichor Howie', 'Stole $5 of gum', 13);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Quiet Storm', 'Satan''s Nostrils');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Englewood', 'Evaded jury duty by turning himself into a tree', 14);
INSERT INTO ship (ship_name, weapon_name) VALUES ('[No Entry]', 'sdfdfdfdffdfdfddf');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Ed Jones', 'Ketchup [redacted] [redacted]', 15);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Condiment Blast', '57th Variety');