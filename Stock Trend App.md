Stock Trend App
===============
author: Brijesh Kumar
date: 27 July 2017

Introduction
============

***This app is intended to provide an easy to use interface to lookup stock symbols from google finance, and provide trends as:***

- Stock price trend
- Stock volume trend
- Max/Min price for date range
- Max/Min volume for date range

Stock Trend App
===============
Stock trend app is hosted on shiny server. App link is as:

https://myrprojects.shinyapps.io/StockTrendApp/

Lookup Stock Symbol
-------------------
***To lookup stock tread, request can be configured with following inputs:***

- Enter ticker symbol (required)
- Select date range (required)
- Select inflation adjustment in price trend (optional)
- Plot price on log scale(optional)

Quantmod package
================
<br>This app utlizes quantmod package, which is Quantitative Financial Modelling & Trading Framework for R
,used to retreive data from google finance and inflation adjustment from fred.
</br>
***Data Sources:***
- Federal Reserve Bank of St. Louis FRED (11,000 economic series)
- Google Finance (OHLC data)

***Quantmod functions can be referenced from:***
- https://www.quantmod.com/documentation/00Index.html

A sample call to FRED data
==========================

```r
library(quantmod)
options("getSymbols.warning4.0"=FALSE)
d = getSymbols('CPIAUCNS', src = 'FRED',auto.assign = FALSE)
str(d)
```

```
An 'xts' object on 1913-01-01/2017-06-01 containing:
  Data: num [1:1254, 1] 9.8 9.8 9.8 9.8 9.7 9.8 9.9 9.9 10 10 ...
 - attr(*, "dimnames")=List of 2
  ..$ : NULL
  ..$ : chr "CPIAUCNS"
  Indexed by objects of class: [Date] TZ: UTC
  xts Attributes:  
List of 2
 $ src    : chr "FRED"
 $ updated: POSIXct[1:1], format: "2017-07-30 10:01:13"
```

Visual representation
=====================
get stock data:

```r
data <- getSymbols('JPM',src = "google",from = '2017-01-01',to = Sys.Date(),auto.assign = FALSE)
```
chart series
------------
![alt text](README_files/figure-html/unnamed-chunk-3-1.png)

Shiny
=====
This app utilizes Shiny, a web application framework for R, to create encapsulation and presentation of web interface for this app.
For more details, please refer:
- https://shiny.rstudio.com/

Thank you !
===========
