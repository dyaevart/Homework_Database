/*1 - Название и продолжительность самого длительного трека.*/

SELECT title, duration
FROM public.track
ORDER BY duration desc
LIMIT 1;
 
/*2 - Название треков, продолжительность которых не менее 3,5 минут.*/

SELECT title
FROM public.track
WHERE duration >= '00:03:30';

/*3 - Названия сборников, вышедших в период с 2018 по 2020 год включительно.*/

SELECT name
FROM public.collection
WHERE collection.year BETWEEN '2018-01-01' AND '2020-12-31';

/*4 - Исполнители, чьё имя состоит из одного слова.*/

SELECT artist_id, "name"
FROM public.artist
WHERE name NOT LIKE '% %';

/*5 - Название треков, которые содержат слово «мой» или «my».*/

SELECT title
FROM public.track
WHERE title LIKE '%мой%'
OR title LIKE '%my%';

/*6 - Количество исполнителей в каждом жанре.*/

SELECT g.name, count(g.genre_id)
FROM public.genre g
INNER JOIN public.artistgenre a ON g.genre_id = a.genre_id
GROUP BY g.name
ORDER BY count(g.genre_id) DESC;

/*7 - Количество треков, вошедших в альбомы 2019–2020 годов.*/

SELECT count(t.album_id)
FROM public.track t
INNER JOIN public.album a ON t.album_id = a.album_id
WHERE a.year BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY t.album_id;

/*8 - Средняя продолжительность треков по каждому альбому.*/

SELECT a.name, TO_CHAR(avg(t.duration),'MI:SS')
FROM public.track t
INNER JOIN public.album a ON t.album_id = a.album_id
GROUP BY a.name;

/*9 - Все исполнители, которые не выпустили альбомы в 2020 году.*/

SELECT a.name
FROM public.artist a
INNER JOIN public.albumartist aa ON a.artist_id = aa.artist_id 
INNER JOIN public.album al ON aa.album_id = al.album_id
WHERE date_part('year', al.year) != 2020

/*10 - Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).*/
SELECT DISTINCT c.name 
FROM public.collection c
INNER JOIN public.trackcollection tc ON c.collection_id = tc.collection_id
INNER JOIN track t ON t.track_id = tc.track_id 
INNER JOIN album a ON a.album_id = t.album_id 
INNER JOIN albumartist aa ON aa.album_id = a.album_id 
INNER JOIN artist ar ON ar.artist_id = aa.artist_id
WHERE ar."name" = 'KINO'