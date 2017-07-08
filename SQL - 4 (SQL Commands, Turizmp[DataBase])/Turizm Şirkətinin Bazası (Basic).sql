CREATE TABLE `İşçilər` (
	`id` INT(10) NOT NULL,
	`name` varchar(255) NOT NULL,
	`surnaname` varchar(255) NOT NULL,
	`vəzifəsi` varchar(255) NOT NULL,
	`Turlar_paketi_id` INT(10) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Müştərilər` (
	`id` INT(10) NOT NULL,
	`name` varchar(255) NOT NULL,
	`surname` varchar(255) NOT NULL,
	`ödədiyi_pul` INT(11) NOT NULL,
	`Turlar_paketi_id` INT(10) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Turlar` (
	`id` INT(10) NOT NULL,
	`info` TEXT(1500) NOT NULL,
	`Müştərilər_id` INT(10) NOT NULL AUTO_INCREMENT,
	`İşçilər_id` INT(10) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `İşçilər` ADD CONSTRAINT `İşçilər_fk0` FOREIGN KEY (`Turlar_paketi_id`) REFERENCES `Turlar`(`id`);

ALTER TABLE `Müştərilər` ADD CONSTRAINT `Müştərilər_fk0` FOREIGN KEY (`Turlar_paketi_id`) REFERENCES `Turlar`(`id`);

ALTER TABLE `Turlar` ADD CONSTRAINT `Turlar_fk0` FOREIGN KEY (`Müştərilər_id`) REFERENCES `Müştərilər`(`id`);

ALTER TABLE `Turlar` ADD CONSTRAINT `Turlar_fk1` FOREIGN KEY (`İşçilər_id`) REFERENCES `İşçilər`(`id`);

