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
- Search queries opslaan in database
  - Alléén search queries opslaan in database als er 0 resultaten voor zijn
- Afbeeldingen lokaal vanaf de computer uploaden naar de database
- Afbeeldingen vanaf de database in de browser tonen bij de bijgehorende advertentie
- Implementatie responsformulier voor gebruiker waarmee gegevens kunnen worden opgevraagd
- Taalkeuze opslaan (op het moment switcht hij terug naar Nederlands elke keer als een nieuwe pagina wordt geopend)

#### Done:
- Nieuwe account registratie
- Inlog (& uitlog)
- Werkende zoekfunctie
- Plaatsen nieuwe advertenties van ingelogde gebruikers
- Multi-language support (NL+EN)

#### Nice to have:
- E-mail verificatie
- Toon persoonlijke informatie plaatsers advertenties
- Submit pagina verplaatsen naar een pop-up in index.php
- Namen categorieën tonen
- Advertenties selecteren via categorieën
- Details over advertentie inzien
- De welkomsttekst op index.php niet meer tonen als de gebruiker terug komt op index.php na submitten
- Betere styling
