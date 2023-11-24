SELECT Year, Count(Year) AS "Records"
FROM cites
WHERE Genus = "Falco" and Year < 2019
GROUP BY Year
ORDER BY Year