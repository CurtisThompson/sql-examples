SELECT Name, cites.Taxon, COUNT(cites.Taxon) AS Count
FROM cites
RIGHT JOIN LeicestershireBirds ON LeicestershireBirds.Taxon = cites.Taxon
GROUP BY cites.Taxon