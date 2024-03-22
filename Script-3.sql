CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(20) NOT NULL,
	movie_category VARCHAR(30) NOT NULL,
	movie_gate INTEGER
);

CREATE TABLE cinema (
	cinema_id SERIAL PRIMARY KEY,
	no_of_movies INTEGER NOT NULL,
	zip_code INTEGER NOT NULL
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	price INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
	cinema_id INTEGER NOT NULL,
	FOREIGN KEY (cinema_id) REFERENCES cinema(cinema_id)
);

CREATE TABLE movie_cinema_track (
	cinema_id INTEGER NOT NULL,
	FOREIGN KEY(cinema_id) REFERENCES cinema(cinema_id),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

SELECT *
FROM cinema 
