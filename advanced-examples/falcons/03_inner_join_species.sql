SELECT LeicestershireBirds.Taxon
FROM LeicestershireBirds
INNER JOIN (SELECT Taxon, Genus FROM cites WHERE Genus = "Falco" GROUP BY Taxon) AS Cit
ON LeicestershireBirds.Taxon = Cit.Taxon
WHERE Cit.Genus = "Falco"