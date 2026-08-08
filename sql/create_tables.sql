-- create_tables.sql
-- Database: MusicLibrary
-- Dialect: SQLite

PRAGMA foreign_keys = ON;

CREATE TABLE Artist (
    Id INTEGER PRIMARY KEY,
    Name TEXT NOT NULL UNIQUE,
    Country TEXT NOT NULL,
    FoundedYear INTEGER CHECK (FoundedYear BETWEEN 1900 AND 2100)
);

CREATE TABLE Album (
    Id INTEGER PRIMARY KEY,
    ArtistId INTEGER NOT NULL,
    Title TEXT NOT NULL,
    ReleaseYear INTEGER NOT NULL CHECK (ReleaseYear BETWEEN 1900 AND 2100),
    Genre TEXT NOT NULL,
    FOREIGN KEY (ArtistId) REFERENCES Artist(Id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE Track (
    Id INTEGER PRIMARY KEY,
    AlbumId INTEGER NOT NULL,
    Title TEXT NOT NULL,
    DurationSeconds INTEGER NOT NULL CHECK (DurationSeconds > 0),
    TrackNumber INTEGER NOT NULL CHECK (TrackNumber > 0),
    FOREIGN KEY (AlbumId) REFERENCES Album(Id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    UNIQUE (AlbumId, TrackNumber)
);
