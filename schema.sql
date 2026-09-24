CREATE TABLE artist_songs( --artist's songs
    artist_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (artist_id, song_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
);



CREATE TABLE song_genres( --song's genres
    song_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (song_id, genre_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);
CREATE TABLE danceability_ranges( --song's danceability ranges
    song_id INT NOT NULL,
    danceability_range_id INT NOT NULL,
    PRIMARY KEY (song_id, danceability_range_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id),
    FOREIGN KEY (danceability_range_id) REFERENCES danceability_ranges(danceability_range_id)
);
CREATE TABLE track_popularity( --song's popularity
    song_id INT NOT NULL,
    popularity_id INT NOT NULL,
    PRIMARY KEY (song_id, popularity_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id),
    FOREIGN KEY (popularity_id) REFERENCES popularity(popularity_id)
);