SELECT cites.Year, CAST(FalconRecords.Records AS FLOAT) / COUNT(cites.Year) AS "Percentage of Records"
FROM cites
INNER JOIN (SELECT Year, Count(Year) AS "Records"
            FROM cites
            WHERE Genus = "Falco" and Year < 2019
            GROUP BY Year) AS FalconRecords
ON cites.Year = FalconRecords.Year
WHERE cites.Year < 2019
GROUP BY cites.Year
ORDER BY cites.Year