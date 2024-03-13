
INSERT INTO Game_TBL (state)
VALUES ('created');

INSERT INTO Player_TBL (Player_ID, User_Name) 
VALUES (1,'Player1');

UPDATE Game_TBL  
SET state = 'started',
WHERE User_ID = 'Player1',
WHERE Game_ID = (SELECT MAX(Game_ID) FROM Game_TBL;

UPDATE Game_TBL
SET Guess_Count = Word_State = 'Word'
WHERE Game_ID = (SELECT MAX(Game_ID) FROM Game_TBL);

UPDATE Game_TBL
SET Guess_Count = Guess_Count + 1, Word_State = 'ChangedWord'
WHERE Game_ID = (SELECT MAX(Game_ID) FROM Game_TBL);

DELETE FROM Game_TBL;

UPDATE Game_TBL
SET state = 'finished'
WHERE Game_ID = (SELECT MAX(Game_ID) FROM Game_TBL);

SELECT * FROM Game_TBL;
SELECT * FROM Word_TBL;
SELECT * FROM User_TBL;
SELECT * FROM Player_TBL; 
SELECT * FROM GameWord_TBL;