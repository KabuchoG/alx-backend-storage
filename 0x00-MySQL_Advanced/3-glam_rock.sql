-- lists all bands with Glam rock as their main style, ranked by their longevity
SELECT band_name, (CASE 
    WHEN split IS NULL THEN NULL
    ELSE  split - formed
END) AS lifespan
FROM metal_bands
WHERE style = 'Glam rock' AND split IS NOT NULL
ORDER BY lifespan DESC;