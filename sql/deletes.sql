-- deletes.sql
-- One DELETE operation.
-- Track 12 is removed. Because Track has no dependent tables,
-- the deletion does not break any other relationship.

DELETE FROM Track
WHERE Id = 12;
