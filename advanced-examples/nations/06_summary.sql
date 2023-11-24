SELECT
        ET1.Code,
        ET1.Territory,
        COUNT(*) AS "Import Count",
        (
            SELECT COUNT(*)
            FROM cites AS CIT
            WHERE CIT.Exporter = ET1.Code
        ) AS "Export Count",
        (
            SELECT Taxon
            FROM cites AS CIT
            WHERE CIT.Importer = ET1.Code
                AND CIT.Term = "live"
                AND CIT.Year >= 2015
            GROUP BY CIT.Taxon
            ORDER BY SUM(CIT.Quantity) DESC
            LIMIT 1
        ) AS "Top Import Species",
        (
            SELECT Taxon
            FROM cites AS CIT
            WHERE CIT.Exporter = ET1.Code
                AND CIT.Term = "live"
                AND CIT.Year >= 2015
            GROUP BY CIT.Taxon
            ORDER BY SUM(CIT.Quantity) DESC
            LIMIT 1
        ) AS "Top Export Species"
FROM EuropeTerritories AS ET1
INNER JOIN cites
ON ET1.Code = cites.Importer
WHERE cites.Year >= 2015
GROUP BY cites.Importer
ORDER BY ET1.Territory ASC