Buy and Hold
========================================================
author: Rajesh Menon
date: May 22, 2015

A Strategy for building wealth with stocks
========================================================

 - 'Buy and Hold' is a popular strategy of building wealth through stocks.

 - This app tells you how much wealth you would have built, if you had followed that strategy.

quantmod package
========================================================

This app relies heavily on two functions from the quantmod package:

1. It uses getSymbols to download financial data straight into R from websites like Google finance.
2. It uses chartSeries to display prices in an attractive chart.

What if you had bought $1000 of AAPL on 2013/01/01 and Held
========================================================


```r
library(quantmod)
  dataWhatIf <- 
    getSymbols("AAPL", src = "google", 
               from = "2013-01-01",
               to = Sys.Date(),
               auto.assign = FALSE)
```

You can see from the chart that as of May 2015, you would have around $1600
========================================================

![plot of chunk unnamed-chunk-2](buyAndHold-figure/unnamed-chunk-2-1.png) 

Did I convince you to 'buy and hold' yet ?
