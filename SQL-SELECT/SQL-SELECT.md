# SQL-SELECT

## Unklarheiten beseitigen

Welche Fragen sind aus der Einführung oder dem Vortrag offen geblieben?
(Bitte nur Verständnisfragen zum Vortrag, keine weiterführenden Spezialfragen)

Bitte versucht nun als Gruppe diese Fragen bereits zu klären.
Nutzt gerne alle erdenklichen Quellen. Alles ist erlaubt. Bitte nutzt zum Beispiel gerne Google, ChatGPT, Eure Freunde und Bekannte, Eure IDE, andere Webseiten oder Bücher oder was auch immer.

Wenn Ihr alle ein gemeinsames Verständnis von dem Thema habt, klickt auf "Weiter"

Ausführung der Übungen erfolgt auf https://www.programiz.com/sql/online-compiler/

## Recherche

Findet gemeinsam für die hier aufgelisteten Fragen Antworten und tragt sie hier ein.
Seid kreativ! Alles ist erlaubt! Bitte nutzt zum Beispiel gerne Google, ChatGPT, Eure Freunde und Bekannte, Eure IDE, andere Webseiten oder Bücher oder was auch immer.

* Wie sieht der SQL Befehl aus im alle Mitarbeiter aus der Tabelle `Mitarbeiter` abzufragen?
  `inputfield`

  SELECT * FROM Mitarbeiter;

* Wie kann ich mit dem SELECT Befehl nach bestimmten Spalten filtern?
  `inputfield`

 SELECT * FROM [TABLENAME]
 ORDER BY [COLUMN] [ASC/DESC]

* Was macht der Befehl `SELECT DISTINCT Country FROM Customers;`?
  `inputfield`

  Zeigt die Länder an, die unterschiedlich sind. Also keine Duplikate.


## Aufgabe 1: Einfache SELECT Abfrage

Nutze den Online SQL Editor unter https://www.programiz.com/sql/online-compiler/ für die folgenden Übungen. Diese Aufgaben sollen dir helfen, die Grundlagen des SQL SELECT-Befehls zu verstehen und anzuwenden, sowie die Verwendung des WHERE-Befehls zur Filterung von Ergebnissen.

1. Verwende den `SELECT` Befehl, um alle Spalten der Tabelle `Customers` abzufragen.

SELECT * FROM Customers;

## Aufgabe 2: SELECT mit spezifischen Spalten

1. Unter Verwendung der Tabelle `Customers`, wähle nur die Spalten `customer_id`,`first_name` und `country` aus.

SELECT customer_id, first_name, country FROM Customers;

## Aufgabe 3: Einsatz des WHERE Befehls

1. Verwende die Tabelle `Customers` und führe eine Abfrage aus, die nur die Kunden zurückgibt, deren `Alter` größer als 25 ist.

SELECT * FROM Customers
WHERE age > 25;

2. Verwende die Tabelle `Customers` und führe eine Abfrage aus, die nur die Kunden zurückgibt, deren `Alter` größer als 25 ist und aus den USA kommen.

SELECT * FROM Customers
WHERE age > 25 AND country = 'USA';

## Bonus Aufgabe

1. Verwende die Tabelle `Customers` und führe eine Abfrage aus, die nur die Kunden zurückgibt, deren `Alter` größer als 25 ist und aus den USA kommen. Sortiere das Ergebnis nach `first_name` in aufsteigender Reihenfolge.

SELECT * FROM Customers
WHERE age > 25 AND country = 'USA'
ORDER BY first_name ASC;
