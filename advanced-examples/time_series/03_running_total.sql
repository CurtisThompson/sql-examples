SELECT Year, CAST(SUM(Traded) OVER (ORDER BY YEAR ASC) AS INT) AS "Running Total Birds Traded"
FROM (
    SELECT Year, SUM(Quantity) AS "Traded"
    FROM cites
    WHERE Term="live"
    GROUP BY Year
    ORDER BY Year ASC
)