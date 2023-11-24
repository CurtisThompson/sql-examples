# European Nations

The importing and exporting of species can vary by nation, and there are a lot of insights we can gain by exploring the data in this way. What nations are exporting the most species? What species are commonly imported? Is there a region that is more active? We will explore all of this in SQL for the European region.

Firstly, we need to know what countries are in Europe. To do this we create a new table of European countries with the SQL statement in `01_create_table.sql`. We will populate the table with rows using `02_insert_rows.sql`.

To begin, we will do some simple SQL exploration. The query `03_exploration_import.sql` belfinds the importing countries of Europe that are most represented in the CITES table. We could do a similar query with exports.

We can also look at what species are being imported and exported. Of interest might be live species. `04_exploration_export_rank.sql` will find the live species that are most exported (in terms of quantity, not number of records) from Europe since 2015.

Performing this for both export and imports shows that parrots are very well represented in the database. We can also do a query to find the most common non-parrot species. This is done in `05_exploration_export_rank_parrotless.sql`.

Our next query is going to be a more complex one, but it will just be a summary of all of the information we have worked out so far. To create this query, we start with the query that allowed us to get the import count for each country. We have modified this slightly to only consider records that are from 2015 or more recent. For here, we can add some further subqueries that will allow us to collect all of the previous data. All of these subqueries are in the SELECT clause: the first gets our export count, the second gets our top imported live species, the third gets our top exported live species (all since 2015). This query can be found in `06_summary.sql`.

Finally, we don't need the European countries table anymore so we are going to drop it with `07_clean_up.sql`.