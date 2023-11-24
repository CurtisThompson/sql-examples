SELECT Count(Taxon) AS "Number of Falcon", Count(DISTINCT Taxon) AS "Species of Falcon"
FROM cites WHERE Genus = "Falco"