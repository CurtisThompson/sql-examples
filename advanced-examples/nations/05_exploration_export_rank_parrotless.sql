SELECT
    RANK() OVER (ORDER BY SUM(Quantity) DESC) AS "Rank",
    Taxon,
    SUM(Quantity) AS "Export Count",
    Family
FROM cites
WHERE Exporter IN (SELECT Code FROM EuropeTerritories)
    AND Term = "live"
    AND Year >= 2015
    AND Family <> "Psittacidae"
GROUP BY Taxon
ORDER BY SUM(Quantity) DESC
LIMIT 5