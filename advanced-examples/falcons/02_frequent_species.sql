SELECT Taxon, Count(Taxon) AS Records
FROM cites
WHERE Genus = "Falco"
GROUP BY Taxon
ORDER BY Count(Taxon) DESC
LIMIT 10