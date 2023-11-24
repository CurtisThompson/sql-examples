SELECT Year, SUM(Quantity) AS "Live Birds Traded"
FROM cites
WHERE Term="live"
GROUP BY Year
ORDER BY Year ASC