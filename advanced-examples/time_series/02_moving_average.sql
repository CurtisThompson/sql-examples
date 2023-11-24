SELECT YEAR, CAST(AVG(Traded) OVER (ORDER BY Year ASC ROWS 4 PRECEDING) AS INT) AS "Moving Average"
FROM (
    SELECT Year, SUM(Quantity) AS "Traded"
    FROM cites
    WHERE Term="live"
    GROUP BY Year
    ORDER BY Year ASC
)