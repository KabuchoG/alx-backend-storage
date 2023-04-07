-- lists all bands with Glam rock as their main style, ranked by their longevity
-- list all band_name, lifespan (formed to split or current year)
SELECT band_name, (IFNULL((split - formed), NULL))
 AS lifespan
FROM metal_bands
WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
ORDER BY lifespan DESC;