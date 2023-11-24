SELECT Name, LeicestershireBirds.Taxon, COUNT(LeicestershireBirds.Taxon) AS Count
FROM LeicestershireBirds
INNER JOIN cites ON LeicestershireBirds.Taxon = cites.Taxon
GROUP BY LeicestershireBirds.Taxon