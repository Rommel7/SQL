CREATE TABLE `System` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`OS` varchar(100) NOT NULL,
	`Drivers` varchar(100) NOT NULL,
	`Utilities` varchar(100) NOT NULL,
	`Archivators` varchar(100) NOT NULL,
	`Tools` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Media` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`Converters` varchar(100) NOT NULL,
	`Players` varchar(100) NOT NULL,
	`Editors` varchar(100) NOT NULL,
	`Codecs` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Graphics` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`Adobe` varchar(200) NOT NULL,
	`Autodesk` varchar(200) NOT NULL,
	`Corel_Draw` varchar(200) NOT NULL,
	`3DSMax` varchar(200) NOT NULL,
	`Ashampoo` varchar(200) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Security` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`Anti_Virus` varchar(200) NOT NULL,
	`Anti_Spam` varchar(200) NOT NULL,
	`Anti_Malware` varchar(200) NOT NULL,
	`Anti_Trojan` varchar(200) NOT NULL,
	`Freezers` varchar(200) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Office` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`MSOffice2003` varchar(200) NOT NULL,
	`MSOffice2007` varchar(200) NOT NULL,
	`MSOffice2010` varchar(200) NOT NULL,
	`MSOffice2013` varchar(200) NOT NULL,
	`MSOffice2016` varchar(200) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `DVD | ISO | USB` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`DVD_Burners` varchar(255) NOT NULL,
	`ISO_Writers` varchar(255) NOT NULL,
	`Portable_USB` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Download` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`Torrent` varchar(255) NOT NULL,
	`Uploaders` varchar(255) NOT NULL,
	`ID_Managers` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Browsers` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Others` (
	`id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Sayt` (
	`id` INT(10) NOT NULL,
	`Media_id` varchar(100) NOT NULL,
	`System_id` varchar(100) NOT NULL,
	`Grapphics_id` varchar(100) NOT NULL,
	`İnfo_id` TEXT(1500) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `İnfo` (
	`id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Sayt` ADD CONSTRAINT `Sayt_fk0` FOREIGN KEY (`Media_id`) REFERENCES `Media`(`id`);

ALTER TABLE `Sayt` ADD CONSTRAINT `Sayt_fk1` FOREIGN KEY (`System_id`) REFERENCES `System`(`id`);

ALTER TABLE `Sayt` ADD CONSTRAINT `Sayt_fk2` FOREIGN KEY (`Grapphics_id`) REFERENCES `Graphics`(`id`);

ALTER TABLE `Sayt` ADD CONSTRAINT `Sayt_fk3` FOREIGN KEY (`İnfo_id`) REFERENCES `İnfo`(`id`);

