-- updates.sql
-- Two UPDATE operations.

-- 1. Increase the duration of one track by 5 seconds.
UPDATE Track
SET DurationSeconds = DurationSeconds + 5
WHERE Id = 1;

-- 2. Correct the genre of one album.
UPDATE Album
SET Genre = 'Pop/R&B'
WHERE Id = 2;
