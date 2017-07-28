Stock Trend App
===============

Introduction
------------

***This app is intended to provide an easy to use interface to lookup stock symbols from google finance, and provide trends as:***

- Stock price trend
- Stock volume trend
- Max/Min price for date range
- Max/Min volume for date range

App
---

Lookup Stock Symbol
-------------------
***To lookup stock tread, request can be configured with following inputs:***

- Enter ticker symbol (required)
- Select date range (required)
- Select inflation adjustment in price trend (optional)
- Plot price on log scale(optional)

Quantmod package
----------------
<br>This app utlizes quantmod package, which is Quantitative Financial Modelling & Trading Framework for R
,used to retreive data from google finance and inflation adjustment from fred.
</br>
<br></br>
***Data Sources:***
- Federal Reserve Bank of St. Louis FRED (11,000 economic series)
- Google Finance (OHLC data)


***Quantmod functions can be referenced from:***
- https://www.quantmod.com/documentation/00Index.html

Shiny
-----
This app utilizes Shiny, a web application framework for R, to create encapsulation and presentation of web interface for this app.
For more details, please refer:
- https://shiny.rstudio.com/

**Thank you !**
