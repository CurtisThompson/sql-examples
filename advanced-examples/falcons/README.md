# Exploring Falcons In The Database

The first thing we might want to do when exploring falcons in our database is to see how many different species and rows there are. All falcons belong in the genus "Falco" so we can filter by genus. Then we just need to perform counts. This is done in `01_falcon_count.sql`.

It might also be useful to see the most frequent species of falcon, which is done in `02_frequent_species.sql`. That query shows us that Falco hybrid and Falco rusticolus are very commonly imported species.

Another thing we might want to check is which traded species have been spotted in the wild in Leicestershire. We can check this with a simple inner join, as done in `03_inner_join_species.sql`.

Are the number of falcon records going up or down over time? We can check this with `04_falcons_over_time.sql`.

The problem with a simple count of records over time is that our method of collecting data might also be changing. One way to account for this is to compare the number of falcon records against the total number of records (i.e. get a proportion by dividing the former by the latter). This is done in `05_falcon_proportion_over_time.sql`.