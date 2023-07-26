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
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('LP 944-020 1337', 'LP 944-020', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Ice Storm Squad', 'Luyten''s Star', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('The Archambaults', 'Potoo', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Free Company', '61 Cygni', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Oasis Gigafighters Sponsored by Coffee El Rancho''s Subwiches Grill', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Faraday Rocksteadies', '17 Draconis', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Westerfield Catamounts', '33 G. Canis Majoris', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Vo Starcrushers', 'Eta Grus', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('The Cranberries', 'Alioth', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Ross Ringleaders', 'Ross 128', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Ganglion Horizons', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Fadden Veli Brotherhood', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Ray City Funk', 'Ray City Station, Sol', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Wolf Tide', 'Wolf 1061', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('Argera Redeemers', '', '...');
INSERT INTO faction (fac_name, fac_homesystem, fac_description) VALUES ('The Legacy', '', 'where all the dead pilots go...');

/*
Pilots for Tau Ceti and their ships (1)
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
Pilots and ships for Arcturus Marauders (2)
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
Pilots and ships for LP 944-020 1337 (3)
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

/*
Pilots and ships for Ice Storm Squad (4)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('MC Phenethylamine', 'Was a comedian, laughed off stage. Fell on a person and killed them', 16);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Axon', 'the Stimulizer');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('ECG-333 VIVASCAN', 'Refused to show anyone''s heartbeat as it goes against their religion', 17);
INSERT INTO ship (ship_name, weapon_name) VALUES ('FLY_ME_AWAY_BABY', 'QRS_Complex');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Anosmic Patricia', 'Stultified her local representative', 18);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Cleaned Up', 'Glucocorticoid');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Lutea Ficus', 'Did not use industry standard', 19);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Life Finds Away', 'Figs Time');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('The Mustarch', 'Impersonating a person of higher stature', 20);
INSERT INTO ship (ship_name, weapon_name) VALUES ('The Throne', 'Sword of Mercy');
/*
Pilots and ships for the Archambaults (5)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Jesse Burns', '', 21);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Sam Fuego', '', 22);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Morgan Melendez', '', 23);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Tracy Papers', '', 24);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Kit Peck', '', 25);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

/*
Pilots and ships for Free Company (6)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Instant Noodles', 'They ate someone', 26);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Cup of Rammin''', 'Flavor Pack');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Bomb Box', 'They ate someone', 27);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Red Wire', 'Green Wire');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Reginald Heap', 'They ate someone', 28);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Bears with Knives', 'Knifeopult');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Larrchibald Sweets', 'They ate someone', 29);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Candy Stand', 'Workin for the Weekend');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Ross Vegas', 'Cannibalism', 30);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Penny Slots', 'Jackpot!');

/*
Pilots and ships for Oasis Gigafighters Sponsored by Coffee El Rancho's Subwiches Grill (7)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('', '', 31);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('', '', 32);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('', '', 33);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('', '', 34);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('', '', 35);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

/*
Pilots and ships for Faraday Rocksteadies (8)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('George Frightfest', '', 36);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Philmon Lesterfield', '', 37);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Digital Wristwatch', '', 38);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Numb Rightfoot', '', 39);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Wentoff Queen', '', 40);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

/*
Pilots and ships for Westerfield Catamounts (9)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Main Dot Html', '', 41);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Puma Inkwell', '', 42);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Mingrove Styleman', '', 43);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Cougar Wrap', '', 44);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Aina Leon', '', 45);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

/*
Pilots and ships for Vo Starcrushers (10)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Jimmy Salsa', '[Redacted] fraud', 46);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Disfigured Butcher', 'Untamed Suspension');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Haywood Vanmeter', 'Purse snatching', 47);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Prime Overlord', 'Malice Diamond');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Bass Weems', 'Body possession', 48);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Partial Form', 'Spectacle Razor');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Luna Faustus', 'Demon summoning of the "Blood Grunyon"', 49);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Eve of Mutruq', 'Bone Ragnarok');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Echo Echo', 'Taking a non-corporeal form and killing the entire city of [Redacted]', 50);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Mindless', 'Amnesia Leviathan');

/*
Pilots and ships for The Cranberries (11)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Tacoman Cheese', 'Said was gas, but not gay enough (ie: would not wear a pink ballcap)', 51);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Cheese-O-Squeeze', 'Boiling Queso');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Vaminos Brymo', 'Electric-slided the wrong direction', 52);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Insufficient Praise', 'Go Crazy');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Fluffy "Fluffy" Mullida', 'Notorious smoothie smuggler', 53);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Dados Borrosos', 'Comically-sized Blender');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Tom Knits', 'Won too many pun competitions', 54);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Big Dumb', 'Go Stupid');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Catfish Prangle', 'Climbed on land as a fish and discovered THEY were the missing link', 55);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Danger Dangle', 'Power Stangle');

/*
Pilots and ships for Ross Ringleaders (12)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Canoda Birthday', '', 56);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Warm Whirlwind', 'Hot Dancer');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Yael Voracious', '', 57);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Dazzling Phoenix', 'Father Shadow');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Elowen Riay', '', 58);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Dirty Guardian', 'Aching Halo');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Dandwich Smoth', '', 59);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Twilight Bird', 'Blank Venus');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Keera Crommons', '', 60);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Jumbo Behemoth', 'Empty Guardian');

/*
Pilots and ships for Ganglion Horizons (13)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Dropkick Snowman', 'Went ape shit at the Ganglion Ape Shit Convention', 61);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Light Frostbight', 'The Original Spectator');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Henderson Reeft', 'Wore a coat in the summer', 62);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Creepy Whisper', 'Blissful Stinger');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Lennard Entirely', 'Wrote a fake horoscope column', 63);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Lazy Supernova', 'Hasty Apocalypse');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Forrest Lad', 'Krumped in the forest, alone', 64);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Haunting Lotus', 'Quiet Swordsman');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Pet Graves', 'tied Mingrove Styleman''s shoelaces together', 65);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Flawless Biscuit', 'Awkward Pancake');

/*
Pilots and ships for Fadden Veli Brotherhood (14)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Nicely Nicelton', '', 66);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Francois Dramm', '', 67);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Tangerine Enhancer', '', 68);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Barry McGawkener', '', 69);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Feather Termite', '', 70);
INSERT INTO ship (ship_name, weapon_name) VALUES ('', '');

/*
Pilots and ships for Ray City Funk (15)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Donovan Askew', 'Shoplifting', 71);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Giant''s Husk', 'Suffering''s End');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Orville Malone', 'Perjury', 72);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Infecting Bone', 'Suffering''s End');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Adela Fuentes', 'Pyramid scheme', 73);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Ghost Fat', 'End Source');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Shorty Meeks', 'Racketeering', 74);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Wolpertinger', 'Incarcerated Golden');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Child Barbosa', '[Redacted]', 75);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Biff', 'Doom');

/*
Pilots and ships for Wolf Tide (16)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Baggie Carrots', 'Recovered from alcoholism', 76);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Earned Certificate', 'Super Degree');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Onbrand Papercut', 'Long legs stepping', 77);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Stolen Notebook', 'Broken Ram');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Ramblewood Marion', 'Bnuddle', 78);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Puddle', 'Skuddle');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Mahrah Framah', 'Paid the debts of their friends', 79);
INSERT INTO ship (ship_name, weapon_name) VALUES ('30 Seconds Later', 'Two Tugs');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Megan the Indifferent', 'Skateboarded into the sunset', 80);
INSERT INTO ship (ship_name, weapon_name) VALUES ('More Emergency', 'Even More Emergency');
/*
Pilots and ships for Argera Redeemers (17)
*/
INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Southern Routes', 'Racist', 81);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Sweet Summer Child', 'The Good Word');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Rock Puncher', 'Punched a rock', 82);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Metamorphic Mandible', 'Mineral Muncher');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Jury Sunfield', '[''dacted]', 83);
INSERT INTO ship (ship_name, weapon_name) VALUES ('A Ship About Nothing', 'Four Fingers');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Bogfeet', 'Being a cryptid', 84);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Rawrrghgh', 'Breweeegggh');

INSERT INTO pilot (pilot_name, pilot_crime, ship) VALUES ('Caroline Jefferies', 'Walked and chewed gum', 85);
INSERT INTO ship (ship_name, weapon_name) VALUES ('Waffle Royale', 'With Cheese');