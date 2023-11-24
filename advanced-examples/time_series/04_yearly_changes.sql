SELECT
    Year,
    Traded,
    CAST(Traded - LAG(Traded, 1) OVER (ORDER BY Year ASC) AS INT) AS "Yearly Difference",
    ROUND((Traded - LAG(Traded, 1) OVER (ORDER BY Year ASC)) / LAG(Traded, 1) OVER(ORDER BY Year ASC) * 100, 2) AS "Percentage Difference"
FROM (
    SELECT Year, SUM(Quantity) AS "Traded"
    FROM cites
    WHERE Term="live"
    GROUP BY Year
    ORDER BY Year ASC
)