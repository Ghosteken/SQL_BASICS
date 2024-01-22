-- WITH DuplicateCTE AS (
--     SELECT name, release_year, COUNT(*) AS cnt
--     FROM albums
--     GROUP BY name, release_year
--     HAVING cnt > 1
-- )
-- DELETE a
-- FROM albums a
-- JOIN DuplicateCTE d ON a.name = d.name AND a.release_year = d.release_year
-- WHERE a.id NOT IN (
--     SELECT MIN(id)

--     FROM albums
--     GROUP BY name, release_year
-- );

-- Now select the updated albums table
SELECT * FROM albums;


-- Select distinct rows from bands_real
SELECT DISTINCT * FROM bands_real;

-- Select distinct rows from albums
SELECT DISTINCT * FROM albums;
