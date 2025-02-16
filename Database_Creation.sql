CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
	artist_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS Collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year DATE NOT NULL
);


CREATE TABLE IF NOT EXISTS Genre (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
	duration TIME NOT NULL,
	album_id INTEGER REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS AlbumArtist (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Album(album_id),
	artist_id INTEGER NOT NULL REFERENCES Artist(artist_id)
);

CREATE TABLE IF NOT EXISTS ArtistGenre (
	id SERIAL PRIMARY KEY,
	artist_id INTEGER NOT NULL REFERENCES Artist(artist_id),
	genre_id INTEGER NOT NULL REFERENCES Genre(genre_id)
);

CREATE TABLE IF NOT EXISTS TrackCollection (
	id SERIAL PRIMARY key,
	track_id INTEGER NOT NULL REFERENCES Track(track_id),
	collection_id INTEGER NOT NULL REFERENCES Collection(collection_id)
);

/* ---------------------------- */

CREATE TABLE IF NOT EXISTS Employee (
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	department VARCHAR(40),
	chief_id INTEGER,
	is_chief BOOLEAN
);