/* Create DATABASE */
/* Create DB giftit met uft8 als character set (niet hoofdlettergevoelig)*/
CREATE DATABASE giftit CHARACTER SET utf8 COLLATE utf8_general_ci;

/* Create TABLES */
/* Create gebruiker tabel */
CREATE TABLE `giftit`.`gebruiker` (
	`GebruikersID`	VARCHAR(20) NOT NULL,
	`Email`		VARCHAR(30) NOT NULL,
	`GebruikersNaam` VARCHAR(30) NOT NULL,
	`Voornaam`	VARCHAR(25) NOT NULL,
	`Achternaam`	VARCHAR(25) NOT NULL, 
	`Straat`	VARCHAR(50) NOT NULL,
	`Huisnummer`	VARCHAR(5) NOT NULL,
	`Postcode`	VARCHAR(6)  NOT NULL,
	`Stad`		VARCHAR(30) NOT NULL,
	`Land`		VARCHAR(30) NOT NULL,
	`Rol`		VARCHAR(10) NOT NULL,
	CONSTRAINT `gebruikerPK` PRIMARY KEY (`GebruikersID`)
);

/* Create Categorie tabel */
CREATE TABLE `giftit`.`categorie` (
	`CategorieID`	INT(6) 		NOT NULL AUTO_INCREMENT,
    `Naam`	 		VARCHAR(35) NOT NULL,
    `SubCategorie`  INT(6) NOT NULL,
    CONSTRAINT `categoriePK` PRIMARY KEY (`CategorieID`),
    CONSTRAINT `categorieFK` FOREIGN KEY(`SubCategorie`) REFERENCES `giftit`.`categorie` (`CategorieID`)
);

/* Create Advertentie tabel */
CREATE TABLE `giftit`.`advertentie` (
	`AdvID` 		INT(6) 			NOT NULL AUTO_INCREMENT,
    `AanmaakDatum` 	DATETIME,
    `GebruikersID` 	INT(6)			NOT NULL, 
    `CategorieID`	INT(6)       	NOT NULL,
    `Titel`			VARCHAR(20) 	NOT NULL,
    `Inhoud`		VARCHAR(1000) 	NOT NULL,
    `Staat`			VARCHAR(35) 	NOT NULL,
    `Prijs`			DECIMAL(8,2) 	NOT NULL,
    `VerzendKosten` DECIMAL(8,2) DEFAULT '3.50',
    `StatusProduct` VARCHAR(40)	DEFAULT 'Herbruikbaar tweedehands product',
    CONSTRAINT `advertentiePK` PRIMARY KEY(`AdvID`),
    CONSTRAINT `advertentieFK1` FOREIGN KEY (`GebruikersID`) REFERENCES `giftit`.`gebruiker` (`GebruikersID`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `advertentieFK2` FOREIGN KEY (`CategorieID`) REFERENCES `giftit`.`categorie` (`CategorieID`) ON DELETE NO ACTION ON UPDATE CASCADE 
);

/* Create Personeel tabel */
CREATE TABLE `giftit`.`personeel` (
	`PersoneelsID`	INT(6) NOT NULL AUTO_INCREMENT,
    `Voornaam` 		VARCHAR(25) NOT NULL,
    `Achternaam` 	VARCHAR(25) NOT NULL, 
    `Straat`		VARCHAR(35) NOT NULL,
    `Huisnummer`	VARCHAR(10) NOT NULL,
    `Postcode`		VARCHAR(6) 	NOT NULL,
    `Stad`			VARCHAR(35) NOT NULL,
    `Land`			VARCHAR(35) NOT NULL,
    `Functie`		VARCHAR(35) NOT NULL DEFAULT 'Administrator',
    CONSTRAINT `personeelPK` PRIMARY KEY(`PersoneelsID`)
);

/* Create UrenRegistratie tabel */
CREATE TABLE `giftit`.`urenregistratie` (
	`RegistratieID`		int(6) NOT NULL AUTO_INCREMENT,
    `StartDstamp`		DATETIME NOT NULL,
    `StopDstamp`        DATETIME NOT NULL,
    `GewerkteUren`		TIMESTAMP,
    `PersoneelsID`      INT(6) NOT NULL,
    CONSTRAINT `urenregistratiePK` PRIMARY KEY(`RegistratieID`),
    CONSTRAINT `urenregistratieFK` FOREIGN KEY(`PersoneelsID`) REFERENCES `giftit`.`personeel` (`PersoneelsID`) ON DELETE NO ACTION ON UPDATE CASCADE
);

/* Create vervoerder tabel */
CREATE TABLE `giftit`.`vervoerder` (
`Vervoerder`        VARCHAR(35) NOT NULL,
`ServiceLevel`      VARCHAR(35) NOT NULL,
`Omschrijving`      VARCHAR(80) NULL DEFAULT 'Omschrijving van de vervoerder-service level',
`LinkVervoerder`    VARCHAR(50) NULL,
CONSTRAINT `vervoerderPK` PRIMARY KEY (`Vervoerder`, `ServiceLevel`)
);

/* Create Booking tabel */
CREATE TABLE `giftit`.`booking` (
	`BookingID`		INT(6) 		NOT NULL AUTO_INCREMENT,
    `Vervoerder`	VARCHAR(35) NOT NULL,
    `ServiceLevel`	VARCHAR(35) NOT NULL,
    `AdvID`			INT(6) 		NOT NULL,
    `GebruikerID`	INT(6)		NOT NULL,
    `Straat`		VARCHAR(35) NOT NULL,
    `Huisnummer`	VARCHAR(10) NOT NULL,
    `Postcode`		VARCHAR(6) 	NOT NULL,
    `Stad`			VARCHAR(35) NOT NULL,
    `Land`			VARCHAR(35) NOT NULL,
    CONSTRAINT `bookingPK` PRIMARY KEY(`BookingID`),
    CONSTRAINT `bookingFK1` FOREIGN KEY(`Vervoerder`,`ServiceLevel`) REFERENCES `giftit`.`vervoerder` (`Vervoerder`, `ServiceLevel`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `bookingFK2` FOREIGN KEY(`AdvID`) REFERENCES `giftit`.`advertentie` (`AdvID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `bookingFK3` FOREIGN KEY(`GebruikerID`) REFERENCES `giftit`.`gebruiker` (`GebruikerID`) ON DELETE RESTRICT ON UPDATE CASCADE
);

/* Create Order tabel */
CREATE TABLE `giftit`.`order` (
	`OrderID`  		INT(6) 		NOT NULL AUTO_INCREMENT,
    `AdvID`	   		INT(6) 		NOT NULL,
    `GebruikerID`	INT(6) 		NOT NULL,
    `StatusOrder`   VARCHAR(25) NOT NULL DEFAULT 'Aangemaakt',
    `Vervoerder`    VARCHAR(35) NOT NULL,
    `ServiceLevel`  VARCHAR(35) NOT NULL,
    `BookingID`		INT(6)      NULL,
    `PersoneelsID`   INT(6) 		NOT NULL,
 	CONSTRAINT `orderPK` PRIMARY KEY(`OrderID`),
    CONSTRAINT `orderFK1` FOREIGN KEY(`AdvID`) REFERENCES `giftit`.`advertentie` (`AdvID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `orderFK2` FOREIGN KEY(`GebruikerID`) REFERENCES `giftit`.`gebruiker` (`GebruikerID`) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT `orderFK3` FOREIGN KEY(`Vervoerder`,`ServiceLevel`) REFERENCES `giftit`.`vervoerder` (`Vervoerder`,`ServiceLevel`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `orderFK4` FOREIGN KEY(`BookingID`) REFERENCES `giftit`.`booking` (`BookingID`) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT `orderFK5` FOREIGN KEY(`PersoneelsID`) REFERENCES `giftit`.`personeel` (`PersoneelsID`) ON DELETE RESTRICT ON UPDATE CASCADE
);

/* Create pakketvolgnr tabel */
CREATE TABLE `giftit`.`pakketvolgnr` (
	`TrackingNO`	VARCHAR(40) NOT NULL,
    `Vervoerder`	VARCHAR(35) NOT NULL,
    `ServiceLevel`	VARCHAR(35) NOT NULL,
    `OrderID`		INT(6) NOT NULL,
    CONSTRAINT `pakketvolgnrPK` PRIMARY KEY(`TrackingNO`),
    CONSTRAINT `pakketvolgnrFK1` FOREIGN KEY(`Vervoerder`,`ServiceLevel`) REFERENCES `giftit`.`vervoerder` (`Vervoerder`,`ServiceLevel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `pakketvolgnrFK2` FOREIGN KEY(`OrderID`) REFERENCES `giftit`.`order` (`OrderID`) ON DELETE CASCADE on UPDATE NO ACTION
);

/* Create transactie table */
CREATE TABLE `giftit`.`transactie` (
	`TransactieID`		INT(6) 		NOT NULL AUTO_INCREMENT,
    `OrderID`			INT(6) 		NOT NULL,
    `AdvID`				INT(6) 		NOT NULL,
    `GebruikerID`		INT(6) 		NOT NULL,
    `StatusOrder`		VARCHAR(35) NOT NULL,
    `Gebeurtenis`		VARCHAR(35) NOT NULL,
    `PersoneelsID`		INT(6)		NOT NULL,
    CONSTRAINT `transactiePK` PRIMARY KEY(`TransactieID`),
    CONSTRAINT `transactieFK1` FOREIGN KEY(`OrderID`) REFERENCES `giftit`.`order` (`OrderID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `transactieFK2` FOREIGN KEY(`AdvID`) REFERENCES `giftit`.`advertentie` (`AdvID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `transactieFK3` FOREIGN KEY(`GebruikerID`) REFERENCES `giftit`.`gebruiker` (`GebruikerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `transactieFK4` FOREIGN KEY(`PersoneelsID`) REFERENCES `giftit`.`personeel` (`PersoneelsID`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

/* Create view headline */
CREATE OR REPLACE VIEW `giftit`.`headline` as select * from `giftit`.`advertentie` where `AanmaakDatum` < CURRENT_DATE - 14; 
