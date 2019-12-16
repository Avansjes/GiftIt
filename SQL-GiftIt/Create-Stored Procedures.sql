/* (Robin) Middels onderstaande procedure kan er een volgnummer worden aangemaakt voor een pakket. */
/* Create Stored Procedure */
DELIMITER //
CREATE PROCEDURE `insert_pakketvolgnr` (
	IN `par_TrackingNO` VARCHAR(40),
	IN `par_Vervoerder` VARCHAR(35),
	IN `par_ServiceLevel` VARCHAR(35),
	IN `par_OrderID` INT(10))
BEGIN
	INSERT INTO `pakketvolgnr` (
	`TrackingNO`,
	`Vervoerder`,
	`ServiceLevel`,
	`OrderID`) VALUES (
	`par_TrackingNO`,
	`par_Vervoerder`,
	`par_ServiceLevel`,
	`par_OrderID`);
END;
//

/* CALL Stored Procedure */
CALL `insert_pakketvolgnr` (TrackingNO,Vervoerder,ServiceLevel,OrderID)


/* Stored Prcedure Vervoerder aanmaken */
DELIMITER //
CREATE PROCEDURE `insertVervoerder`
	(IN `par_vervoerder` VARCHAR(35),IN `par_ServiceLevel` VARCHAR(35), OUT `resultaat1` VARCHAR(35),OUT `resultaat2` VARCHAR(35),OUT `resultaat3` VARCHAR(80),OUT `resultaat4` VARCHAR(50))
BEGIN
	INSERT INTO `giftit`.`vervoerder`(`Vervoerder`,`ServiceLevel`)
	VALUES(`par_vervoerder`, `par_ServiceLevel`);
	Select `Vervoerder`,`ServiceLevel`,`Omschrijving`,`LinkVervoerder`
	into `resultaat1`,`resultaat2`,`resultaat3`,`resultaat4`
	from `giftit`.`vervoerder`
	where `Vervoerder`= `par_vervoerder`
	and `ServiceLevel` = `par_ServiceLevel`;
END;
//

/* Voorbeeld nieuwe vervoerder toevoegen middels Storede Function */
call `insertVervoerder` ('FEDEX','EXPRESS', @restultaat1,@restultaat2,@restultaat3,@restultaat4);
select @restultaat1,@restultaat2,@restultaat3,@restultaat4;

/* Create Trigger op tabel order om inserts te genereren voor de tabel transactie */
/* Na een insert in de order tabel */
DELIMITER //
CREATE OR REPLACE TRIGGER `transactie_na_insert`
AFTER INSERT ON `giftit`.`order`
FOR EACH ROW

BEGIN
	INSERT INTO `giftit`.`transactie` VALUES (
		null, new.OrderID, new.AdvID, new.GebruikersID, new.StatusOrder, new.StatusOrder);
END
//

/* Na een update in de order tabel */
DELIMITER //
CREATE OR REPLACE TRIGGER `transactie_na_update`
AFTER UPDATE ON `giftit`.`order`
FOR EACH ROW

BEGIN
	INSERT INTO `giftit`.`transactie` VALUES (
		null, new.OrderID, new.AdvID, new.GebruikersID, new.StatusOrder, new.StatusOrder);
END
//

/* Geeft bovenliggende categorieen van een categorie. */
CREATE OR REPLACE PROCEDURE `GetParentCategories` (IN `CatId` INT(6)) 
WITH RECURSIVE cte (CategorieID, Naam, SubCategorieVan) AS
(
  SELECT CategorieID, Naam, SubCategorieVan
  FROM categorie c1
  WHERE CategorieID = CatId
  UNION ALL
  SELECT c2.CategorieID, c2.Naam, c2.SubCategorieVan 
  FROM cte
    INNER JOIN categorie c2
  WHERE cte.SubCategorieVan = c2.CategorieID
)
SELECT * FROM cte WHERE CategorieID <> CatId;