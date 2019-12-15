/* INSERT data `gebruikers` */
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('124913', 'jan.jansen@gmail.com', 'Jantje', 'Jan', 'Jansen', 'Kerkstraat', '21', '1234DE', 'Schiedam', 'Nederland', 'Gebruiker');
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('232143', 'familiedebie@hotmail.com', 'Jo de Bie', 'Jo', 'de Bie', 'Markt', '6', '3221AA', 'Amsterdam', 'Nederland', 'Gebruiker');
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('082381', 'famgoossens@goossens.nl', 'Jan Goossens', 'Jan', 'Goossens', 'Grote Heistraat', '31', '2341BE', 'Rotterdam', 'Nederland', 'Gebruiker');
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('052821', 'blijemiesje@gmail.com', 'MeisjeMiesje', 'Wies', 'Klarens', 'Vrijstraat', '28A', '3727MK', 'Etten-Leur', 'Nederlands', 'Gebruiker');

/* INSERT data `categorie` */
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (1, 'Huis en Inrichting', NULL);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (NULL, 'Antiek en Kunst', NULL);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (NULL, 'Badkamer', 1);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (NULL, 'Woonkamer', 1);

/* INSERT `booking` */
INSERT INTO `booking` (`BookingID`, `Vervoerder`, `ServiceLevel`, `AdvID`, `GebruikerID`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`) VALUES (NULL, 'TNT', 'EXPRESS-PLUS', NULL, 232143, 'Markt', '6', '3221AA', 'Amsterdam', 'Nederland');
INSERT INTO `booking` (`BookingID`, `Vervoerder`, `ServiceLevel`, `AdvID`, `GebruikerID`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`) VALUES (NULL, 'TNT', 'EXPRESS-PLUS', NULL, 232143, 'Markt', '6', '3221AA', 'Amsterdam', 'Nederland');
INSERT INTO `booking` (`BookingID`, `Vervoerder`, `ServiceLevel`, `AdvID`, `GebruikerID`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`) VALUES (NULL, 'TNT', 'EXPRESS-PLUS', NULL, 052821, 'Vrijstraat', '28A', '3727MK', 'Etten-Leur', 'Nederlands');
INSERT INTO `booking` (`BookingID`, `Vervoerder`, `ServiceLevel`, `AdvID`, `GebruikerID`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`) VALUES (NULL, 'TNT', 'EXPRESS-PLUS', NULL, 124913, 'Kerkstraat', '21', '1234DE', 'Schiedam', 'Nederland');

/* INSERT data `pakketvolgnr` */
CALL `insert_pakketvolgnr` (05118987073542,"DHL","Next day",1);
CALL `insert_pakketvolgnr` (05118987073543,"PostNL","Next day",2);
CALL `insert_pakketvolgnr` (05118987073544,"DHL","Next day",3);
CALL `insert_pakketvolgnr` (05118987073545,"DHL","Next day",4);
CALL `insert_pakketvolgnr` (05118987073546,"DHL","Next day",5);
CALL `insert_pakketvolgnr` (05118987073547,"PostNL","Next day",6);
CALL `insert_pakketvolgnr` (05118987073548,"DHL","Next day",7);
CALL `insert_pakketvolgnr` (05118987073549,"DHL","Next day",8);
CALL `insert_pakketvolgnr` (05118987073551,"PostNL","Next day",9);
CALL `insert_pakketvolgnr` (05118987073552,"DHL","Next day",10);

/* Voorbeeld Insert statements tabel vervoerder */
INSERT INTO `giftit`.`vervoerder` VALUES ('TNT', 'EXPRESS-PLUS','Zending wordt volgende werkdag voor 9 uur aangeboden', 'www.tnt.nl');
INSERT INTO `giftit`.`vervoerder` VALUES ('TNT', 'EXPRESS','Zending wordt volgende werkdag voor 12 uur aangeboden', 'www.tnt.nl');
INSERT INTO `giftit`.`vervoerder` VALUES ('TNT', 'EOB','Zending wordt volgende werkdag voor einde werkdag aangeboden', 'www.tnt.nl');
INSERT INTO `giftit`.`vervoerder` VALUES ('UPS', 'EXPRESS-PLUS','Zending wordt volgende werkdag voor 9 uur aangeboden', 'www.ups.com');
INSERT INTO `giftit`.`vervoerder` VALUES ('UPS', 'EXPRESS','Zending wordt volgende werkdag voor 12 uur aangeboden', 'www.ups.com');
INSERT INTO `giftit`.`vervoerder` VALUES ('UPS', 'EOB','Zending wordt volgende werkdag voor einde werkdag aangeboden', 'www.ups.com');

/* Voorbeeld Insert middels stored procedure tabel vervoerder */
call `insertVervoerder` ('FEDEX','EXPRESS', @restultaat1,@restultaat2,@restultaat3,@restultaat4);
