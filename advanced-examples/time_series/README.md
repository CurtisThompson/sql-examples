# Time Series SQL

In the real world, it is very common to want to view data over time. This could include yearly sales by a company, changes in stock prices over time, or the 7 day average of cases of a disease in a population. With the raw data in a database, we can use SQL to answer many of these time-series questions.

`01_yearly_data.sql` shows the number of live traded birds in the CITES database for every year since the year 2000.

## Moving Averages

Moving average is a technique to smooth out time-series data points by taking an average over a period of time. The smoothing out of data points reduces the effect of short term fluctuations or anomalies from the data, and highlights the long term trends in the data. The period of time for which we take a moving average is dependent upon the question being answered or the application of the data.

In our CITES database we will be taking a moving average of the number of live birds traded each year. To show an example of how we would calculate this, we will take the year 2004 - where there were 2,009,323 live traded birds. If we wanted to take a 5-year moving average of this statistic then we also need the value for the four previous years (which you can see in the above table). We then take an average of those 5 values (2000, 2001, 2002, 2003, and 2004), which becomes the 5-year moving average for the year 2004.

`02_moving_average.sql` uses a window function to get our moving average, and then rounds it to an integer.

With our moving average results, it is clear that the overall trend of trading live birds was decreasing in the first decade of the century. It then increased slightly around 2010-2012 before settling at a figure of around 750,000 live birds traded each year.

## Running Totals

The running total works on a similar premise to the moving average - however we will be taking the total across all previous years instead of the average for a subset of previous years. The query to achieve this in SQL is very similar to our previous query, however we will replace AVG with SUM, and not specify the number of preceding rows in our window function.

We perform this in `03_running_total.sql`.

## Yearly Changes and Growth

Yearly (or sometimes monthly) changes in values is a very common statistic to calculate. In the business world this could be used to see how the profits in your current year have changed based upon previous years, or to see how your sales for a specific month compare to sales from the same month in the previous year.

To calculate this statistic, we need to make use of another function called the LAG function. The LAG function can be used with a window function to get the xth previous value. For example, LAG(Traded, 1) will get the last value, while LAG(Traded, 3) will get the 3rd last value. By subtracting the last value from the current value we can get the difference between the two years. If this difference is divided by the last value, we can also get the percentage difference.

The example in `04_yearly_changes.sql` uses the LAG function to do just that, for the number of live birds traded each year.