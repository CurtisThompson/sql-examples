# SQL Examples
This repository uses the CITES Trade Dataset to create example SQL queries. These queries show how to perform all of the basic SQL operations. More advanced (or possibly intermediate) queries are performed in some notebooks to explain how to perform certain tasks, or to tell a specific story found within the data.

## Basic Examples
 * SELECT
 * DISTINCT
 * WHERE
 * ORDER BY
 * NULL Values
 * GROUP BY
 * Aggregate Functions (MIN, MAX, SUM, etc.)
 * INNER JOIN
 * LEFT JOIN
 * RIGHT JOIN
 * ~~OUTER JOIN~~
 * UNION
 * HAVING
 * ~~EXISTS~~
 * ~~CASE~~

## Advanced Examples
###Falcons
The Falcons notebook does an exploration of records which involve the _Falco_ genus. Results are directly piped into Matplotlib functions to plot different graphs to visually show SQL data.
 * Extracting Data For Bar and Line Graphs
 * Inner Joins
 * Casting Values To Data Types

###Nations
The Nations notebook looks at differences between different European territorieis in the CITES notebook, including how much they import and export, as well as what species are popular in each territory. One single query is created at the end which collates all of the data explored in the notebook so that it can be plotted on a Python Plotly choropleth.
 * Creating and Dropping Tables
 * Inserting Values Into Tables
 * RANK() OVER() Function
 * Subqueries
 * The IN Operator


## Data
The main data used in this repository relates to animal trades tracked by CITES, and can be obtained from [the CITES website](https://trade.cites.org/en/cites_trade/#). This corresponds to the __cites__ table in the database, which has been prefiltered to only include species in the class "Aves".

Supplementary data has been obtained from [Leicestershire and Rutland Ornithology Society](https://lros.org.uk/), and corresponds to the __LeicestershireBirds__ table in the database.
 