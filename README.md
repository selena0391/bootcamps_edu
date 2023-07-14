# Bootcamps Data
This is a project to gather, transform, and analyze data from technology bootcamps and their outcomes.
## Motivation
As part of the Data Science track from **The Knowledge House**, we have created this capstone project, to put into practice the knowledge we have acquired,
such as Python programming, libraries to process data, to analyze data, and to present information as plots, charts, etc. As well as to interpret the data
and generate conclusions based on the described process.


The libraries we have used are the following:


Library | Description
| :--- | ---:
os | Provides functions for accessing (read, create, remove) files from the operating system.
csv | Allows access to csv files.
re | For using regular expressions.
PyPDF2 | Provides functions for working with PDF documents (create, read, edit).
tabula | Provides functions for working with PDF documents (create, read, edit).
pandas | Used for working with data sets. It has functions for analyzing, cleaning, exploring, and manipulating data.
numpy | Library for Python, adding support for large, multi-dimensional arrays and matrices, along with a large collection of high-level mathematical functions to operate on these arrays..
matplotlib | Plotting library for Python programming language and its numerical mathematics extension NumPy.
psycopg2 | The PostgreSQL database adapter for the Python programming language.
seaborn | Based on matplotlib. It provides a high-level interface for drawing attractive and informative statistical graphics.
scipy | Contains modules for optimization, linear algebra, integration, interpolation, special functions, signal and image processing.
statsmodels | Module that provides classes and functions for the estimation of many different statistical models, as well as for conducting statistical tests, and statistical data exploration.
sklearn | It features various classification, regression and clustering algorithms.
sklearn.impute import SimpleImputer | .
sklearn.linear_model import LinearRegression | .
sklearn.linear_model import Lasso | .
sklearn.linear_model import Ridge | .
sklearn.linear_model import ElasticNet | .
sklearn.metrics import r2_score, mean_squared_error | .


The process we followed in this project includes the following steps:
* Process the data from the PDF files to populate a CSV file containing information from the PDF files
* Create a Exploratory Data Analysis -EDA-, using the CSV file
* Design and create a database to load the data contained in the CSV file
* Create a process to load the data from the CSV file, to the corresponding tables in the database
* Create the eda process.
* Create the cda process.
* Create plots and dashboard using Tableau Public version.
* Create the final presentation.


## Results of Exploratory Data Analysis
The following tendencies were observed during the exploratory data analysis:
* The target variable 'employment rate' is not normally distributed, we had to remove outliers to further use it in ML algorithms
* There is a small to no correlation between programs' costs and success outcomes, such as graduation rate, employment rate and median salaries
* There is a medium correlation between graduation rate and employment rate, the students who graduated on time seemed to find employment faster
* There is no remarkable difference in salaries for the programs taught online or on site. The salaries range for online education is broader, however the median value for the salaries is on the same level for both remote and on-site education.
* Both with KMeans ML algorithm and manual tools we defined the set of skills that lead to the highest employment rate and highest salaries: java, csharp_net, html, css, javascript, sql. We observed this tendency in general - broader skill set leads to better results. Combination of knowledge of frontend and backend lead to highest salaries, Data Science and web development - highest employment rate.

## To explore EDA trends further, check out our interactive [Tableau Dashboard](https://public.tableau.com/app/profile/anastasiya.ayala/viz/Bootcamps_1/Dashboard2)