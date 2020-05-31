/* Hiervoor moet je de afbeeldingen in de map images/ads lokaal hebben opgeslagen */
/* Zorg ervoor dat het filepath klopt! */

UPDATE `advertentie` SET `ImageData`= LOAD_FILE('D:/XAMPP/htdocs/gitit/images/ads/bontjas-1.jpg'), `ImageID` = 1 WHERE AdvID=1;
UPDATE `advertentie` SET `ImageData`= LOAD_FILE('D:/XAMPP/htdocs/gitit/images/ads/manteljas-1.jpg'), `ImageID` = 2 WHERE AdvID=2;
UPDATE `advertentie` SET `ImageData`= LOAD_FILE('D:/XAMPP/htdocs/gitit/images/ads/ring.jpg'), `ImageID` = 3 WHERE AdvID=3;
UPDATE `advertentie` SET `ImageData`= LOAD_FILE('D:/XAMPP/htdocs/gitit/images/ads/hoodie A&F 1.jpg'), `ImageID` = 4 WHERE AdvID=4;
UPDATE `advertentie` SET `ImageData`= LOAD_FILE('D:/XAMPP/htdocs/gitit/images/ads/babyspeelgoed.jpg'), `ImageID` = 5 WHERE AdvID=5;
UPDATE `advertentie` SET `ImageData`= LOAD_FILE('D:/XAMPP/htdocs/gitit/images/ads/droomvanger.jpg'), `ImageID` = 6 WHERE AdvID=6;
UPDATE `advertentie` SET `ImageData`= LOAD_FILE('D:/XAMPP/htdocs/gitit/images/ads/chinese-kraanvogels-1.jpg'), `ImageID` = 7 WHERE AdvID=7;
UPDATE `advertentie` SET `ImageData`= LOAD_FILE('D:/XAMPP/htdocs/gitit/images/ads/carrie-slee-boeken.jpg'), `ImageID` = 8 WHERE AdvID=8;
UPDATE `advertentie` SET `ImageData`= LOAD_FILE('D:/XAMPP/htdocs/gitit/images/ads/postzegels-3.jpg'), `ImageID` = 9 WHERE AdvID=9;
UPDATE `advertentie` SET `ImageData`= LOAD_FILE('D:/XAMPP/htdocs/gitit/images/ads/damestuniek.jpg'), `ImageID` = 10 WHERE AdvID=10;