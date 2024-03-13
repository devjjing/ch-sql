# SQL-INSERT-UPDATE-DELETE

## Unklarheiten beseitigen

Welche Fragen sind aus der Einführung oder dem Vortrag offen geblieben?
(Bitte nur Verständnisfragen zum Vortrag, keine weiterführenden Spezialfragen)

Bitte versucht nun als Gruppe diese Fragen bereits zu klären.
Nutzt gerne alle erdenklichen Quellen. Alles ist erlaubt. Bitte nutzt zum Beispiel gerne Google, ChatGPT, Eure Freunde
und Bekannte, Eure IDE, andere Webseiten oder Bücher oder was auch immer.

Wenn Ihr alle ein gemeinsames Verständnis von dem Thema habt, klickt auf "Weiter"

Ausführung der Übungen erfolgt auf https://www.programiz.com/sql/online-compiler/

## Recherche

Findet gemeinsam für die hier aufgelisteten Fragen Antworten und tragt sie hier ein.
Seid kreativ! Alles ist erlaubt! Bitte nutzt zum Beispiel gerne Google, ChatGPT, Eure Freunde und Bekannte, Eure IDE,
andere Webseiten oder Bücher oder was auch immer.

* Was passiert wenn ich beim `UPDATE` Befehl die `WHERE` Bedingung vergesse?
  `inputfield`
Die neu angegebenen Daten werden für die ganze Kolonne überschrieben.

* Kann man mit einem einzigen INSERT-Befehl mehrere Datensätze gleichzeitig hinzufügen? Wenn ja, wie sieht die Syntax
  aus?
  `inputfield`
Ja:

INSERT INTO Customers (customer_id, first_name, last_name, age, country)
VALUES
(6, "Jane", "Doe", 32, "USA"),
(7, "Jim", "Sterling", 47, "USA");

## Aufgabe 1: Hinzufügen von Daten

Füge der Tabelle `Orders` eine neue Bestellung hinzu, indem du die Spalten `order_id`, `item`, `amount`
und `customer_id` angibst. Achte dabei da drauf das es die 'order_id' noch nicht gibt, die 'customer_id' aber existiert.

1. {order_id: 6, item: 'Laptop', amount: 1, customer_id: 1}
2. {order_id: 7, item: 'Monitor', amount: 2, customer_id: 2}

INSERT INTO Orders (order_id, item, amount)
VALUES
(6, 'Laptop', 1, 1),
(7, 'Monitor', 2, 2);

## Aufgabe 2: Hinzufügen von Daten

Füge der Tabelle Shippings eine neue Versandinformation hinzu, indem du die Spalten `shipping_id`, `status`
und `customer` angibst.

1. {shipping_id: 6, status: 'Pending', customer: 1}
2. {shipping_id: 7, status: 'Pending', customer: 2}

INSERT INTO Customers (shipping_id, status, customer)
VALUES
(6, 'Pending', 1),
(7, 'Pending', 2);

## Aufgabe 3: Aktualisieren von Daten

1. Aktualisiere die Tabelle `Orders` und setze den `amount` auf 3 für die Bestellung mit der `order_id` 6.
2. Aktualisiere die Tabelle `Shippings` und setze den `status` auf 'Shipped' für die Versandinformation mit
   der `shipping_id` 6.

UPDATE Orders
SET amount = 3 WHERE order_id = 6;

UPDATE Shipping
SET status = 'Shipped' WHERE shipping_id = 6;


## Aufgabe 4: Löschen von Daten

1. Lösche die Bestellung mit der `order_id` 7 aus der Tabelle `Orders`.
2. Lösche die Versandinformation mit der `shipping_id` 7 aus der Tabelle `Shippings`.

DELETE FROM Orders
WHERE order_id = 7;

DELETE FROM Shipping
WHERE shipping_id = 7;