/* INSERT data `gebruikers` */
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES (1, 'jan.jansen@gmail.com', 'Jantje', 'Jan', 'Jansen', 'Kerkstraat', '21', '1234DE', 'Schiedam', 'Nederland', 'Gebruiker');
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES (2, 'familiedebie@hotmail.com', 'Jo de Bie', 'Jo', 'de Bie', 'Markt', '6', '3221AA', 'Amsterdam', 'Nederland', 'Gebruiker');
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES (3, 'famgoossens@goossens.nl', 'Jan Goossens', 'Jan', 'Goossens', 'Grote Heistraat', '31', '2341BE', 'Rotterdam', 'Nederland', 'Gebruiker');
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES (4, 'blijemiesje@gmail.com', 'MeisjeMiesje', 'Wies', 'Klarens', 'Vrijstraat', '28A', '3727MK', 'Etten-Leur', 'Nederlands', 'Gebruiker');
INSERT INTO `gebruiker` (`GebruikersID`, `Email`, `GebruikersNaam`, `Voornaam`, `Achternaam`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`, `Rol`) VALUES (5, 'gabriellajagers@hetnet.nl', 'De jager', 'Gabriella', 'Jagers', 'Zellesacker', '138', '6546HH', 'Nijmegen', 'Nederlands', 'Gebruiker');

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

/* INSERT data advertenties*/
INSERT INTO `advertentie` (`AdvID`, `AanmaakDatum`, `GebruikersID`, `CategorieID`, `Titel`, `Inhoud`, `Staat`, `VerzendKosten`, `StatusProduct`) VALUES (1, '2018/04/16', 1, 9, "Zeer warme winterjas", "Warme winterjas van maatje 56-58, nog in zeer goede staat. Kan zo opgehaald worden.",1, 6.95, "Zo goed als nieuw");
INSERT INTO `advertentie` (`AdvID`, `AanmaakDatum`, `GebruikersID`, `CategorieID`, `Titel`, `Inhoud`, `Staat`, `VerzendKosten`, `StatusProduct`) VALUES (2, '2018/05/03', 1, 9, "Nette jas, maat 54/56", "Nette jas, is mij te ruim. Meestal draag ik 54, maar zelfs over een kostuum is deze nog wat wijd. Zou zomaar kunnen vallen als een 56",1, 5.00, "Gebruikt");
INSERT INTO `advertentie` (`AdvID`, `AanmaakDatum`, `GebruikersID`, `CategorieID`, `Titel`, `Inhoud`, `Staat`, `VerzendKosten`, `StatusProduct`) VALUES (3, '2018/06/11', 2, 17, "Antieke zilveren ring met Jade", "Prachtige bewerkte antieke ring, maat 18.",1, 1.00, "Zo goed als nieuw");
INSERT INTO `advertentie` (`AdvID`, `AanmaakDatum`, `GebruikersID`, `CategorieID`, `Titel`, `Inhoud`, `Staat`, `VerzendKosten`, `StatusProduct`) VALUES (4, '2018/06/21', 3, 9, "Heren winterhoodie (merk Abercrombie & Fitch)", "Heren winterhoodie binnenkant gevoerd. Capuchon gevoerd. Kangaroezak. Maat M",1, 4.90, "Licht beschadigd");
INSERT INTO `advertentie` (`AdvID`, `AanmaakDatum`, `GebruikersID`, `CategorieID`, `Titel`, `Inhoud`, `Staat`, `VerzendKosten`, `StatusProduct`) VALUES (5, '2018/07/05', 5, 13, "Babyspeelgoed", "Er is veel mee gespeeld, maar mijn kinderen zijn er inmiddels te oud voor. Ze kunnen nog best een tweede ronde meemaken!",1, 4.50, "Gebruikt");
INSERT INTO `advertentie` (`AdvID`, `AanmaakDatum`, `GebruikersID`, `CategorieID`, `Titel`, `Inhoud`, `Staat`, `VerzendKosten`, `StatusProduct`) VALUES (6, '2018/09/25', 3, 6, "Droomvanger", "Droomvanger van 2mm katoen koord, met bruine en witte kralen",1, 3.50, "Zo goed als nieuw");
INSERT INTO `advertentie` (`AdvID`, `AanmaakDatum`, `GebruikersID`, `CategorieID`, `Titel`, `Inhoud`, `Staat`, `VerzendKosten`, `StatusProduct`) VALUES (7, '2018/10/21', 2, 7, "Chinese kraanvogels op scroll", "De scroll is 80x50cm. De conditie is zeer goed.",1, 5.00, "Zo goed als nieuw");
INSERT INTO `advertentie` (`AdvID`, `AanmaakDatum`, `GebruikersID`, `CategorieID`, `Titel`, `Inhoud`, `Staat`, `VerzendKosten`, `StatusProduct`) VALUES (8, '2018/11/11', 5, 15, "Carrie Slee boeken", "In verband met een verhuizing geef ik een aantal boeken weg. Hierbij 3 populaire boeken van Carry Slee: Spijt, Paniek, en Verdriet met Mayonnaise",1, 8.00, "Gebruikt");
INSERT INTO `advertentie` (`AdvID`, `AanmaakDatum`, `GebruikersID`, `CategorieID`, `Titel`, `Inhoud`, `Staat`, `VerzendKosten`, `StatusProduct`) VALUES (9, '2018/11/22', 1, 21, "Oude postzegels", "Oude postzegels. Ik hoef ze niet meer.",1, 4.95, "Gebruikt");
INSERT INTO `advertentie` (`AdvID`, `AanmaakDatum`, `GebruikersID`, `CategorieID`, `Titel`, `Inhoud`, `Staat`, `VerzendKosten`, `StatusProduct`) VALUES (10, '2018/12-24', 4, 10, "Plus size dames tuniek", "Deze soepelvallende tuniek van puur polyester heeft korte of 3/4-mouwen en een ronde hals, maatje L",1, 6.50, "Zo goed als nieuw");

/* INSERT `booking` */
INSERT INTO `booking` (`BookingID`, `Vervoerder`, `ServiceLevel`, `AdvID`, `GebruikersID`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`) VALUES (NULL, 'TNT', 'EXPRESS-PLUS', 1, 232143, 'Markt', '6', '3221AA', 'Amsterdam', 'Nederland');
INSERT INTO `booking` (`BookingID`, `Vervoerder`, `ServiceLevel`, `AdvID`, `GebruikersID`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`) VALUES (NULL, 'TNT', 'EXPRESS-PLUS', 2, 232143, 'Markt', '6', '3221AA', 'Amsterdam', 'Nederland');
INSERT INTO `booking` (`BookingID`, `Vervoerder`, `ServiceLevel`, `AdvID`, `GebruikersID`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`) VALUES (NULL, 'TNT', 'EXPRESS-PLUS', 3, 052821, 'Vrijstraat', '28A', '3727MK', 'Etten-Leur', 'Nederlands');
INSERT INTO `booking` (`BookingID`, `Vervoerder`, `ServiceLevel`, `AdvID`, `GebruikersID`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `Land`) VALUES (NULL, 'TNT', 'EXPRESS-PLUS', 4, 124913, 'Kerkstraat', '21', '1234DE', 'Schiedam', 'Nederland');

/* INSERT data `pakketvolgnr` */
CALL `insert_pakketvolgnr` (05118987073542,'UPS','EXPRESS',1);
CALL `insert_pakketvolgnr` (05118987073543,'TNT','EXPRESS',2);
CALL `insert_pakketvolgnr` (05118987073544,'UPS','EXPRESS',3);
CALL `insert_pakketvolgnr` (05118987073545,'UPS','EXPRESS',4);
CALL `insert_pakketvolgnr` (05118987073546,'UPS','EXPRESS',5);
CALL `insert_pakketvolgnr` (05118987073547,'TNT','EXPRESS',6);
CALL `insert_pakketvolgnr` (05118987073548,'UPS','EXPRESS',7);
CALL `insert_pakketvolgnr` (05118987073549,'UPS','EXPRESS',8);
CALL `insert_pakketvolgnr` (05118987073551,'TNT','EXPRESS',9);
CALL `insert_pakketvolgnr` (05118987073552,'UPS','EXPRESS',10);

/* Voorbeeld Insert statements tabel vervoerder */
INSERT INTO `giftit`.`vervoerder` VALUES ('TNT', 'EXPRESS-PLUS','Zending wordt volgende werkdag voor 9 uur aangeboden', 'www.tnt.nl');
INSERT INTO `giftit`.`vervoerder` VALUES ('TNT', 'EXPRESS','Zending wordt volgende werkdag voor 12 uur aangeboden', 'www.tnt.nl');
INSERT INTO `giftit`.`vervoerder` VALUES ('TNT', 'EOB','Zending wordt volgende werkdag voor einde werkdag aangeboden', 'www.tnt.nl');
INSERT INTO `giftit`.`vervoerder` VALUES ('UPS', 'EXPRESS-PLUS','Zending wordt volgende werkdag voor 9 uur aangeboden', 'www.ups.com');
INSERT INTO `giftit`.`vervoerder` VALUES ('UPS', 'EXPRESS','Zending wordt volgende werkdag voor 12 uur aangeboden', 'www.ups.com');
INSERT INTO `giftit`.`vervoerder` VALUES ('UPS', 'EOB','Zending wordt volgende werkdag voor einde werkdag aangeboden', 'www.ups.com');

/* Voorbeeld Insert middels stored procedure tabel vervoerder */
call `insertVervoerder` ('FEDEX','EXPRESS', @restultaat1,@restultaat2,@restultaat3,@restultaat4);
