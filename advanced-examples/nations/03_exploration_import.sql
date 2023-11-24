SELECT
    RANK() OVER (ORDER BY COUNT(*) DESC) AS "Rank",
    Territory,
    COUNT(*) AS "Import Count"
FROM EuropeTerritories
INNER JOIN cites
ON EuropeTerritories.Code = cites.Importer
GROUP BY cites.Importer
ORDER BY COUNT(*) DESC
LIMIT 10