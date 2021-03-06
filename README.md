# GiftIt

#### ERD:
https://www.lucidchart.com/documents/edit/9176203f-e056-42bd-aec7-67c577c88152

#### Databaseontwerp
https://docs.google.com/document/d/1x5BlHSEBYhNrlFyYwbp15nwWzUjzDbQFVAfnUtNu1Pk/edit

#### Ontwikkelomgeving: XAMPP
#### Source- en versiebeheer: GitHub
#### Deployment
1. Installeer en start XAMPP
2. Open phpMyAdmin (http://localhost/phpmyadmin)
3. Open SQL en voer de bestanden uit:
    1. Full-DB-and-TABLES.sql
    2. Create-Stored Procedures.sql
    3. INSERT-Data.sql

## Voortgang

#### To Do:
- Unit tests
- Implementatie responsformulier voor gebruiker waarmee gegevens kunnen worden opgevraagd

#### Done:
- Nieuwe account registratie
- Inlog (& uitlog)
- Werkende zoekfunctie
- Plaatsen nieuwe advertenties van ingelogde gebruikers
- Multi-language support (NL+EN)
- Search queries worden opgeslagen in de database als deze 0 zoekresultaten terug geeft
- Afbeeldingen lokaal vanaf de computer uploaden naar de database
- Afbeeldingen vanaf de database in de browser tonen bij de bijgehorende advertentie

#### Nice to have:
- E-mail verificatie
- Toon persoonlijke informatie plaatsers advertenties
- Namen categorieën tonen
- Advertenties selecteren via categorieën
- Details over advertentie inzien
- De welkomsttekst op index.php niet meer tonen als de gebruiker terug komt op index.php na submitten
