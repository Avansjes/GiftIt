# Registratie & login pagina

#### Hoe te gebruiken:
Dit is een rudimentaire login en registratiepagina voor de GiftIt database. Hiermee kunnen nieuwe gebruikers worden aangemaakt in de GiftIt database, ook kan je inloggen met gebruikers die al bestaan. Hij is gemaakt voor XAMPP, en kan op de localhost getest worden: 

Na het aanzetten van XAMPP en het aanmaken van de GiftIt database plaats je deze bestanden in X:\XAMPP\htdocs\giftit, waarna ze te testen zijn via dit adres: http://localhost/giftit/login.php

#### Let op:
Ik heb de meeste NOT NULL eigenschappen van de user registry (in de SQL) uit gezet zodat registreren (en testen) sneller gaat. Op het moment zijn alleen de gebruikersnaam, e-mail, en wachtwoord verplicht.

#### To-do:
- Beveiliging tegen SQL injection
- Wachtwoorden een md5 encryption geven (dit hadden ze in eerste instantie al, maar ik kreeg de code niet werkend totdat ik deze verwijderde)
- Wachtwoord herhalen tijdens registratie, en deze wachtwoorden moeten identiek zijn aan elkaar
- Accounts mogen geen gebruik maken van dezelfde username of e-mail adres
- Styling
