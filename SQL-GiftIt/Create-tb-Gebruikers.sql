/* CREATE table gebruikers */
CREATE TABLE `giftit`.`gebruikers` (
`GebruikersID` VARCHAR(20) NOT NULL ,
`Email` VARCHAR(30) NOT NULL ,
`GebruikersNaam` VARCHAR(30) NOT NULL ,
`Voornaam` VARCHAR(20) NOT NULL ,
`Achternaam` VARCHAR(20) NOT NULL ,
`Straat` VARCHAR(50) NOT NULL ,
`Huisnummer` VARCHAR(5) NOT NULL ,
`Postcode` VARCHAR(6) NOT NULL ,
`Stad` VARCHAR(30) NOT NULL ,
`Land` VARCHAR(30) NOT NULL ,
`Rol` VARCHAR(10) NOT NULL,
PRIMARY KEY (`GebruikersID`));

/* INSERT voorbeelden */
INSERT INTO `gebruikers` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('124913', 'jan.jansen@gmail.com', 'Jantje', 'Jan', 'Jansen', 'Kerkstraat', '21', '1234DE', 'Schiedam', 'Nederland', 'Gebruiker');
INSERT INTO `gebruikers` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('232143', 'familiedebie@hotmail.com', 'Jo de Bie', 'Jo', 'de Bie', 'Markt', '6', '3221AA', 'Amsterdam', 'Nederland', 'Gebruiker');
INSERT INTO `gebruikers` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('082381', 'famgoossens@goossens.nl', 'Jan Goossens', 'Jan', 'Goossens', 'Grote Heistraat', '31', '2341BE', 'Rotterdam', 'Nederland', 'Gebruiker');
INSERT INTO `gebruikers` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('052821', 'blijemiesje@gmail.com', 'MeisjeMiesje', 'Wies', 'Klarens', 'Vrijstraat', '28A', '3727MK', 'Etten-Leur', 'Nederlands', 'Gebruiker');