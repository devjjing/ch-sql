# Aufgabenstellung

Ich möchte mit euch das Spiel Hangman in SQL nachbauen. Zu diesem Zweck habe ich folgende Tabellen vorgesehen: Game, Words, GameWord, Player und User. Die Games-Tabelle soll Felder für den aktuellen Spielstatus ("state"), den aktuellen Stand des zu erratenden Wortes ("word-state": Nutze "_" Unterstriche für Buchstaben die noch micht erraten sind) sowie die Anzahl der Versuche ("guess count") enthalten. In der Words-Tabelle sollen eine Auswahl an Wörtern gespeichert werden, aus denen sich Spieler für ein neues Spiel bedienen können. Die User-Tabelle zeigt alle registrierten Benutzer, während die Player-Tabelle alle Spieler eines Spiels speichert. Die GameWord-Tabelle wiederum speichert das aktuell zu erratende Wort für ein Spiel.

## Spielablauf.

1. **Datenbankmodell skizzieren und Felder ausdenken:**
   - **Game-Tabelle**:
     - `game_id` (Primärschlüssel)
     - `state` (Spielstatus: "created", "started", "finished")
     - `word_state` (Array aus Buchstaben für das zu erratende Wort)
     - `guess_count` (Anzahl der Rateversuche)
   - **Words-Tabelle**:
     - `word_id` (Primärschlüssel)
     - `word` (Auswahl an Wörtern)
   - **User-Tabelle**:
     - `user_id` (Primärschlüssel)
     - Weitere relevante Benutzerinformationen
   - **Player-Tabelle**:
     - `player_id` (Primärschlüssel)
     - `user_id` (Fremdschlüssel zur User-Tabelle)
     - `game_id` (Fremdschlüssel zur Game-Tabelle)
   - **GameWord-Tabelle**:
     - `game_id` (Fremdschlüssel zur Game-Tabelle)
     - `word_id` (Fremdschlüssel zur Words-Tabelle)

2. **Create Table Statements:**
   - Die Schüler formulieren die SQL-Anweisungen, um die oben genannten Tabellen zu erstellen.

3. **Spielzug simulieren:**
   - Ein Spieler eröffnet ein neues Spiel:
     - Die Schüler formulieren ein passendes `INSERT INTO`-Statement für die Game-Tabelle (z. B. `state = "created"`).
   - Andere Spieler treten dem Spiel bei:
     - Die Schüler formulieren ein passendes `INSERT INTO`-Statement für die Player-Tabelle.
   - Ein Spieler setzt das Spiel auf "started":
     - Die Schüler formulieren ein passendes `UPDATE`-Statement für die Game-Tabelle.
   - Für den Spielablauf:
     - Rateversuch:
       - Die Schüler formulieren ein `UPDATE`-Statement für die Game-Tabelle, um `guess_count` zu erhöhen und `word_state` zu aktualisieren.
     - Wort aktualisieren:
       - Die Schüler formulieren ein weiteres `UPDATE`-Statement für die Game-Tabelle.
   - Ein Spieler verlässt das Spiel:
     - Die Schüler definieren ein passendes `DELETE`-Statement für die Player-Tabelle.
   - Spiel beenden:
     - Die Schüler formulieren ein abschließendes `UPDATE`-Statement für die Game-Tabelle, um den Zustand auf "finished" zu setzen.

Viel Erfolg mit deinem SQL-Kurs und dem Hangman-Spiel! 🎲🔍👍




(1) Textbasiertes Hangman-Spiel in Java | Complex Solutions. https://complexelepheonix.com/textbasiertes-hangman-spiel-in-java/.
(2) Hangman - Word Game | G Soft Team. http://www.gsoftteam.com/content/hangman-word-game.
(3) Hangman Word Game:Amazon.de:Appstore for Android. https://www.amazon.de/wapfrog-com-Hangman-Word-Game/dp/B071J9H8XQ.
(4) Hangman Games – Schooltools. https://www.schooltools.at/2022/12/19/hangman-games/.
(5) Hangman games - Libregamewiki. https://libregamewiki.org/Hangman_games.
(6) The Puzzle Den: Free Hangman Template Road Trip Activities, Road Trip .... https://www.pinterest.de/pin/36802921942744738/.
(7) 4 SQL Games That Make Learning SQL FUN! - datalemur.com. https://datalemur.com/blog/games-to-learn-sql.
(8) Build a Hangman Game for the Command Line in Python. https://realpython.com/python-hangman/.
(9) Building a Hangman Game Using JavaScript: A Step-by-Step Guide. https://www.endyourif.com/index.php/building-a-hangman-game-using-javascript-a-step-by-step-guide/.
(10) SQL Educational Game - Murder Mystery - Galaxy Training Network. https://training.galaxyproject.org/training-material/topics/data-science/tutorials/sql-game/tutorial.html.
(11) Hangman Game in Python – Simple Game Project for Beginners. https://data-flair.training/blogs/hangman-game-python-code/.
(12) undefined. http://wwwlgis.informatik.uni-kl.de/extra/game/?lang=en.