/* INSERT data `gebruikers` */
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('1247911343', 'jan.jansen@gmail.com', 'Jantje', 'Jan', 'Jansen', 'Kerkstraat', '21', '1234DE', 'Schiedam', 'Nederland', 'Gebruiker');
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('2321214543', 'familiedebie@hotmail.com', 'Jo de Bie', 'Jo', 'de Bie', 'Markt', '6', '3221AA', 'Amsterdam', 'Nederland', 'Gebruiker');
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('0823315681', 'famgoossens@goossens.nl', 'Jan Goossens', 'Jan', 'Goossens', 'Grote Heistraat', '31', '2341BE', 'Rotterdam', 'Nederland', 'Gebruiker');
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('0521279821', 'blijemiesje@gmail.com', 'MeisjeMiesje', 'Wies', 'Klarens', 'Vrijstraat', '28A', '3727MK', 'Etten-Leur', 'Nederlands', 'Gebruiker');
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES ('1553783873', 'gabriellajagers@hetnet.nl', 'De jager', 'Gabriella', 'Jagers', 'Zellesacker', '138', '6546HH', 'Nijmegen', 'Nederlands', 'Gebruiker');

/* INSERT data `categorie` */
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (1, 'Huis en Inrichting', 1);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (2, 'Woonkamer', 1);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (3, 'Badkamer', 1);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (4, 'Slaapkamer', 1);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (5, 'Lampen', 1);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (6, 'Woonaccessoires', 1);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (7, 'Kunst', 7);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (8, 'Kleding', 8);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (9, 'Mannenkleding', 8);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (10, 'Vrouwenkleding', 8);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (11, 'Kinderkleding', 8);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (12, 'Voor de baby', 12);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (13, 'Babyspeelgoed', 12);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (14, 'Baby kleding', 12);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (15, 'Boeken', 15);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (16, 'Hobby en vrije tijd', 16);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (17, 'Sieraden', 17);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (18, 'Electronica', 18);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (19, 'Games & consoles', 18);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (20, 'Muziekinstrumenten', 20);
INSERT INTO `categorie` (`CategorieID`, `Naam`, `SubCategorieVan`) VALUES (21, 'Verzamelen', 21);

/* INSERT `booking` */
INSERT INTO `booking` (`BookingID`, `Vervoerder`, `ServiceLevel`, `AdvID`, `GebruikersID`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`) VALUES (NULL, 'TNT', 'EXPRESS-PLUS', 1, 232143, 'Markt', '6', '3221AA', 'Amsterdam', 'Nederland');
INSERT INTO `booking` (`BookingID`, `Vervoerder`, `ServiceLevel`, `AdvID`, `GebruikersID`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`) VALUES (NULL, 'TNT', 'EXPRESS-PLUS', 2, 232143, 'Markt', '6', '3221AA', 'Amsterdam', 'Nederland');
INSERT INTO `booking` (`BookingID`, `Vervoerder`, `ServiceLevel`, `AdvID`, `GebruikersID`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`) VALUES (NULL, 'TNT', 'EXPRESS-PLUS', 3, 052821, 'Vrijstraat', '28A', '3727MK', 'Etten-Leur', 'Nederlands');
INSERT INTO `booking` (`BookingID`, `Vervoerder`, `ServiceLevel`, `AdvID`, `GebruikersID`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`) VALUES (NULL, 'TNT', 'EXPRESS-PLUS', 4, 124913, 'Kerkstraat', '21', '1234DE', 'Schiedam', 'Nederland');

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
