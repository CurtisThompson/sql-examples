SELECT LeicestershireBirds.Taxon
FROM LeicestershireBirds
LEFT JOIN (
    SELECT Taxon, Count(Taxon) AS Count
    FROM cites GROUP BY Taxon)
AS Cit
ON LeicestershireBirds.Taxon = Cit.Taxon
WHERE Cit.Count IS NOT NULL