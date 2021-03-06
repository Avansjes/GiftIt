/* Create DATABASE */
/* Create DB giftit met uft8 als character set (niet hoofdlettergevoelig)*/
CREATE DATABASE giftit CHARACTER SET utf8 COLLATE utf8_general_ci;

/* Create TABLES */
/* Create Gebruiker tabel */
CREATE TABLE `giftit`.`gebruiker` (
	`GebruikersID`	INT(10)		NOT NULL AUTO_INCREMENT,
	`Email`			VARCHAR(30)	NOT NULL,
	`GebruikersNaam` VARCHAR(30) NOT NULL,
	`WachtWoord`	VARCHAR(30)	NOT NULL,
	`Voornaam`		VARCHAR(25)	NULL,
	`Achternaam`	VARCHAR(25)	NULL,
	`Straat`		VARCHAR(50)	NULL,
	`Huisnummer`	VARCHAR(5)	NULL,
	`Postcode`		VARCHAR(6)	NULL,
	`Stad`			VARCHAR(30)	NULL,
	`Land`			VARCHAR(30)	NULL,
	`Rol`			VARCHAR(10)	NOT NULL,
	CONSTRAINT `gebruikerPK` PRIMARY KEY (`GebruikersID`)
);

/* Create Categorie tabel */
CREATE TABLE `giftit`.`categorie` (
	`CategorieID`	INT(6)		NOT NULL AUTO_INCREMENT,
	`Naam`			VARCHAR(35)	NOT NULL,
	`SubCategorieVan` INT(6)	NOT NULL,
	CONSTRAINT `categoriePK` PRIMARY KEY (`CategorieID`),
	CONSTRAINT `categorieFK` FOREIGN KEY(`SubCategorieVan`) REFERENCES `giftit`.`categorie` (`CategorieID`)
);

/* Create Advertentie tabel */
CREATE TABLE `giftit`.`advertentie` (
	`AdvID`			INT(10)		NOT NULL AUTO_INCREMENT,
	`AanmaakDatum`	DATETIME	NOT NULL,
	`GebruikersID`	INT(10)		NOT NULL,
	`CategorieID`	INT(3)		NOT NULL,
	`Titel`			TEXT(30)	NOT NULL,
	`Inhoud`		TEXT(800)	NOT NULL,
	`Staat`			BINARY(1)	NOT NULL,
	`ImageID`		INT(10)		NOT NULL,
	`ImageData`		LONGBLOB	NOT NULL,
	`VerzendKosten` DECIMAL(8,2) DEFAULT '3.50',
	`StatusProduct` VARCHAR(30)	DEFAULT 'Op zoek naar een nieuw thuis',
	CONSTRAINT `advertentiePK` PRIMARY KEY(`AdvID`),
	CONSTRAINT `advertentieFK1` FOREIGN KEY (`GebruikersID`) REFERENCES `giftit`.`gebruiker` (`GebruikersID`) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT `advertentieFK2` FOREIGN KEY (`CategorieID`) REFERENCES `giftit`.`categorie` (`CategorieID`) ON DELETE NO ACTION ON UPDATE CASCADE
);

/* Create Vervoerder tabel */
CREATE TABLE `giftit`.`vervoerder` (
	`Vervoerder`		VARCHAR(35)	NOT NULL,
	`ServiceLevel`		VARCHAR(35)	NOT NULL,
	`Omschrijving`		VARCHAR(80)	NULL DEFAULT 'Omschrijving van de vervoerder-service level',
	`LinkVervoerder`	VARCHAR(50)	NOT NULL,
CONSTRAINT `vervoerderPK` PRIMARY KEY (`Vervoerder`, `ServiceLevel`)
);

/* Create Booking tabel */
CREATE TABLE `giftit`.`booking` (
	`BookingID`		INT(10)		NOT NULL AUTO_INCREMENT,
	`Vervoerder`	VARCHAR(35)	NOT NULL,
	`ServiceLevel`	VARCHAR(35)	NOT NULL,
	`AdvID`			INT(10)		NOT NULL,
	`GebruikersID`	INT(10)		NOT NULL,
	`Straat`		VARCHAR(35)	NOT NULL,
	`Huisnummer`	VARCHAR(10)	NOT NULL,
	`Postcode`		VARCHAR(6)	NOT NULL,
	`Stad`			VARCHAR(35)	NOT NULL,
	`Land`			VARCHAR(35)	NOT NULL,
	CONSTRAINT `bookingPK` PRIMARY KEY(`BookingID`),
	CONSTRAINT `bookingFK1` FOREIGN KEY(`Vervoerder`,`ServiceLevel`) REFERENCES `giftit`.`vervoerder` (`Vervoerder`, `ServiceLevel`) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT `bookingFK2` FOREIGN KEY(`AdvID`) REFERENCES `giftit`.`advertentie` (`AdvID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
	CONSTRAINT `bookingFK3` FOREIGN KEY(`GebruikersID`) REFERENCES `giftit`.`gebruiker` (`GebruikersID`) ON DELETE RESTRICT ON UPDATE CASCADE
);

/* Create Order tabel */
CREATE TABLE `giftit`.`order` (
	`OrderID`		INT(10)		NOT NULL AUTO_INCREMENT,
	`AdvID`			INT(10)		NOT NULL,
	`GebruikersID`	INT(10)		NOT NULL,
	`StatusOrder`	VARCHAR(25)	NOT NULL DEFAULT 'Aangemaakt',
	`Vervoerder`	VARCHAR(35)	NOT NULL,
	`ServiceLevel`	VARCHAR(35)	NOT NULL,
	`BookingID`		INT(10)		NULL,
	CONSTRAINT `orderPK` PRIMARY KEY(`OrderID`),
	CONSTRAINT `orderFK1` FOREIGN KEY(`AdvID`) REFERENCES `giftit`.`advertentie` (`AdvID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
	CONSTRAINT `orderFK2` FOREIGN KEY(`GebruikersID`) REFERENCES `giftit`.`gebruiker` (`GebruikersID`) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT `orderFK3` FOREIGN KEY(`Vervoerder`,`ServiceLevel`) REFERENCES `giftit`.`vervoerder` (`Vervoerder`,`ServiceLevel`) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT `orderFK4` FOREIGN KEY(`BookingID`) REFERENCES `giftit`.`booking` (`BookingID`) ON DELETE SET NULL ON UPDATE CASCADE
);

/* Create pakketvolgnr tabel */
CREATE TABLE `giftit`.`pakketvolgnr` (
	`TrackingNO`	VARCHAR(40)	NOT NULL,
	`Vervoerder`	VARCHAR(35)	NOT NULL,
	`ServiceLevel`	VARCHAR(35)	NOT NULL,
	`OrderID`		INT(10)		NOT NULL,
	CONSTRAINT `pakketvolgnrPK` PRIMARY KEY(`TrackingNO`),
	CONSTRAINT `pakketvolgnrFK1` FOREIGN KEY(`Vervoerder`,`ServiceLevel`) REFERENCES `giftit`.`vervoerder` (`Vervoerder`,`ServiceLevel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT `pakketvolgnrFK2` FOREIGN KEY(`OrderID`) REFERENCES `giftit`.`order` (`OrderID`) ON DELETE CASCADE on UPDATE NO ACTION
);

/* Create transactie table */
CREATE TABLE `giftit`.`transactie` (
	`TransactieID`	INT(10)		NOT NULL AUTO_INCREMENT,
	`OrderID`		INT(10)		NOT NULL,
	`AdvID`			INT(10)		NOT NULL,
	`GebruikersID`	INT(10)		NOT NULL,
	`StatusOrder`	VARCHAR(25)	NOT NULL,
	`Gebeurtenis`	VARCHAR(35)	NOT NULL,
	CONSTRAINT `transactiePK` PRIMARY KEY(`TransactieID`),
	CONSTRAINT `transactieFK1` FOREIGN KEY(`OrderID`) REFERENCES `giftit`.`order` (`OrderID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT `transactieFK2` FOREIGN KEY(`AdvID`) REFERENCES `giftit`.`advertentie` (`AdvID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT `transactieFK3` FOREIGN KEY(`GebruikersID`) REFERENCES `giftit`.`gebruiker` (`GebruikersID`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

/* Create Zoekopdrachten tabel */
CREATE TABLE `giftit`.`zoekstring` (
	`GebruikersID`	INT(10)		NOT NULL,
	`ZoekOpdracht`	TEXT(100)	NULL,
	`TijdZoeken`	DATETIME	NULL,
	CONSTRAINT `zoekstringFK1` FOREIGN KEY (`GebruikersID`) REFERENCES `giftit`.`gebruiker` (`GebruikersID`) ON DELETE CASCADE ON UPDATE CASCADE
);


/* Create view headline */
CREATE OR REPLACE VIEW `giftit`.`headline` as select * from `giftit`.`advertentie` where `AanmaakDatum` < CURRENT_DATE - 14; 
