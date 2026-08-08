-- select_join.sql
-- JOIN queries combining related tables.

-- 1. Show every track together with its album and artist.
SELECT
    Track.Title AS TrackTitle,
    Album.Title AS AlbumTitle,
    Artist.Name AS ArtistName
FROM Track
JOIN Album ON Track.AlbumId = Album.Id
JOIN Artist ON Album.ArtistId = Artist.Id
ORDER BY Artist.Name, Album.Title, Track.TrackNumber;

-- 2. Show each artist and the number of albums they have.
SELECT
    Artist.Name AS ArtistName,
    COUNT(Album.Id) AS AlbumCount
FROM Artist
JOIN Album ON Artist.Id = Album.ArtistId
GROUP BY Artist.Id, Artist.Name
ORDER BY AlbumCount DESC, Artist.Name ASC;
