CREATE TABLE Myfriends(
  id INTEGER,
  name TEXT,
  birthday TEXT
  );

 

  INSERT INTO Myfriends(id, name, birthday)
  VALUES(1, 'Jane Doe', 'May 30th, 1990');

   

  INSERT INTO Myfriends(id, name, birthday)
  VALUES(2, 'Felicia Onyi', 'Sep 12, 1992');

  INSERT INTO Myfriends(id, name, birthday) 
  VALUES(3, 'Olivia Steph', 'Dec 24, 1986');

   

  UPDATE Myfriends
   SET name = 'Jane Smith'
   WHERE id = 1;

 

 ALTER TABLE Myfriends
 ADD  email TEXT;
 SELECT * FROM friends;

  UPDATE Myfriends
   SET email = 'Jane@codeacademy.com' 
   WHERE id = 1;

  UPDATE Myfriends
   SET email = 'Felicia@codeacademy.com' 
   WHERE id = 2;

  UPDATE Myfriends
   SET email = 'Olivia@codeacademy.com' 
   WHERE id = 3;

 SELECT * FROM Myfriends;

DELETE FROM friends
WHERE id = 1;
SELECT *FROM friends;

