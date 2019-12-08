/* CREATE table personeel */
CREATE TABLE `giftit`.`personeel` ( 
`PersoneelsID` INT(5) NOT NULL AUTO_INCREMENT , 
`Naam` VARCHAR(20) NOT NULL , 
`Achternaam` VARCHAR(20) NOT NULL , 
`Straat` VARCHAR(50) NOT NULL , 
`Huisnummer` VARCHAR(5) NOT NULL , 
`Postcode` VARCHAR(6) NOT NULL , 
`Stad` VARCHAR(20) NOT NULL , 
`Land` VARCHAR(20) NOT NULL , 
`Rol` INT(5) NOT NULL , 
PRIMARY KEY (`PersoneelsID`));

/* INSERT voorbeelden */
INSERT INTO `personeel` (`PersoneelsID`, `Naam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES (NULL, 'Robin', 'Koele', 'Studentlaan', '1', '1234BB', 'Breda', 'Nederland', '1');
INSERT INTO `personeel` (`PersoneelsID`, `Naam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES (NULL, 'Renée', 'Kools', 'Avanslaan', '123', '1235NB', 'Breda', 'Nederland', '1');
INSERT INTO `personeel` (`PersoneelsID`, `Naam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES (NULL, 'Bas', 'Jongbloed', 'Bredalaan', '14', '1255BB', 'Breda', 'Nederland', '1');
INSERT INTO `personeel` (`PersoneelsID`, `Naam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES (NULL, 'Ruben', 'Horvers', 'GiftItlaan', '31', '1238UB', 'Breda', 'Nederland', '1');