-- insert_data.sql
-- Sample data for MusicLibrary

INSERT INTO Artist (Id, Name, Country, FoundedYear) VALUES
    (1, 'The Weeknd', 'Canada', 2010),
    (2, 'Dua Lipa', 'United Kingdom', 2015),
    (3, 'Coldplay', 'United Kingdom', 1996),
    (4, 'Adele', 'United Kingdom', 2006);

INSERT INTO Album (Id, ArtistId, Title, ReleaseYear, Genre) VALUES
    (1, 1, 'After Hours', 2020, 'Pop'),
    (2, 1, 'Starboy', 2016, 'R&B'),
    (3, 2, 'Future Nostalgia', 2020, 'Pop'),
    (4, 3, 'Music of the Spheres', 2021, 'Alternative'),
    (5, 4, '30', 2021, 'Pop');

INSERT INTO Track (Id, AlbumId, Title, DurationSeconds, TrackNumber) VALUES
    (1, 1, 'Blinding Lights', 200, 1),
    (2, 1, 'Save Your Tears', 215, 2),
    (3, 1, 'In Your Eyes', 237, 3),
    (4, 2, 'Starboy', 230, 1),
    (5, 2, 'I Feel It Coming', 269, 2),
    (6, 3, 'Levitating', 203, 1),
    (7, 3, 'Physical', 193, 2),
    (8, 4, 'Higher Power', 178, 1),
    (9, 4, 'My Universe', 228, 2),
    (10, 5, 'Easy On Me', 224, 1),
    (11, 5, 'Oh My God', 225, 2),
    (12, 5, 'Can I Get It', 192, 3);
