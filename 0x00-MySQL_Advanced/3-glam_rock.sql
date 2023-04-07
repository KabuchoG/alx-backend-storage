-- Active: 1680801530775@@127.0.0.1@3306@hbtn_0d_tvshows
-- Lists all bands with Glam rock as their main style, ranked by their longevity.
SELECT band_name, (IFNULL(YEAR(split), YEAR(NOW())) - YEAR(formed)) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
