INSERT INTO Genre
VALUES
  (1,'Pop'), 
  (2,'Rock'), 
  (3,'Traditional'),
  (4,'Classic'),
  (5,'Hip-Hop');


INSERT INTO Artist
VALUES
  (1,'Lady Gaga'), 
  (2,'KINO'), 
  (3,'Ozzy Osborne'),
  (4,'Nadezhda Kadysheva'),
  (5,'Madonna');


INSERT INTO Collection
VALUES
  (1,'Pop Hits','2022-01-08'), 
  (2,'Rock Hits','2025-05-03'), 
  (3,'Russian Folk 2000','1999-11-05'),
  (4,'Best Groups','2021-10-21'),
  (5,'Top Covers','2020-01-01');


INSERT INTO Track
VALUES
  (1,'Место для шага вперёд','00:04:34',2),
  (2,'Группа крови','00:03:12',2),
  (3,'Алюминевые огурцы','00:05:04',2),
  (4,'La Isla Bonita','00:02:45',1),
  (5,'Paranoid','00:06:07',5),
  (6,'Crazy Train','00:03:48',5),
  (7,'Mr.Crowley','00:02:01',5),
  (8,'Плывёт веночек','00:01:58',3),
  (9,'Я не колдунья','00:02:45',3),
  (10,'Напилася я пьяна','00:03:30',3),
  (11,'Poker Face','00:04:23',4),
  (12,'Bad Romance','00:03:41',4),
  (13,'Shallow','00:07:21',4),
  (14,'Ясный мой свет','00:05:55',3);

INSERT INTO Album
VALUES
  (1,'Like a Virgin','1989-11-04'),
  (2,'Звезда по имени Солнце','2019-11-12'),
  (3,'Ансамбль Золотое кольцо','1997-12-01'),
  (4,'The Fame','2008-08-19'),
  (5,'Blizzard of Ozz','1980-09-12');


INSERT INTO TrackCollection
VALUES
  (1,2,4),
  (2,6,4),
  (3,8,4),
  (4,2,2),
  (5,1,2),
  (6,5,2),
  (7,6,2),
  (8,4,1),
  (9,12,1),
  (10,9,3),
  (11,13,5),
  (12,11,5),
  (13,8,5),
  (14,14,5);

INSERT INTO AlbumArtist
VALUES
  (1,1,5),
  (2,2,2),
  (3,3,4),
  (4,4,1),
  (5,5,3);

INSERT INTO ArtistGenre
VALUES
  (1,1,1),
  (2,2,2),
  (3,3,2),
  (4,4,3),
  (5,5,1),
  (6,4,4),
  (7,3,5);