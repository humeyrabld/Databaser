-- select_basic.sql
-- 6 basic SELECT queries demonstrating WHERE, ORDER BY, LIKE and GROUP BY.

-- 1. WHERE: Find tracks longer than 220 seconds.
SELECT Id, Title, DurationSeconds
FROM Track
WHERE DurationSeconds > 220;

-- 2. ORDER BY: Show albums from newest to oldest.
SELECT Id, Title, ReleaseYear, Genre
FROM Album
ORDER BY ReleaseYear DESC;

-- 3. LIKE: Find artists whose name contains the word "The".
SELECT Id, Name, Country
FROM Artist
WHERE Name LIKE '%The%';

-- 4. WHERE + ORDER BY: Find pop albums released from 2020 onwards.
SELECT Id, Title, ReleaseYear
FROM Album
WHERE Genre = 'Pop' AND ReleaseYear >= 2020
ORDER BY ReleaseYear DESC, Title ASC;

-- 5. LIKE: Find tracks containing the word "My".
SELECT Id, Title
FROM Track
WHERE Title LIKE '%My%';

-- 6. GROUP BY + COUNT: Count how many albums each genre has.
SELECT Genre, COUNT(*) AS AlbumCount
FROM Album
GROUP BY Genre;
