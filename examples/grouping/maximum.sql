SELECT Family, MAX(Count)
FROM (SELECT Taxon, Family, COUNT(Taxon) AS Count
      FROM cites
      GROUP BY Taxon)
GROUP BY Family
ORDER BY MAX(Count) DESC