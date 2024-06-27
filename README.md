# Life Expectancy Data Analysis

This repository contains SQL scripts used to analyze life expectancy trends across different countries from 2007 to 2022. The analysis focuses on relationships between life expectancy and various factors such as GDP, BMI, and development status of countries.

## Project Overview

The goal of this project was to explore changes in life expectancy over the last 15 years, observe how economic factors like GDP relate to health outcomes, and understand the impact of health indicators like BMI on life expectancy. The analysis was conducted using MySQL and visualized using Tableau.

## Data Source

The data used in this project consists of a CSV file containing records of life expectancy, GDP, BMI, and other health and economic indicators for various countries from 2007 to 2022. 

## Tools Used

- **MySQL**: For data cleaning, manipulation, and analysis.
- **Tableau**: For data visualization and creating interactive dashboards to present the findings.

## Features

### Data Cleaning

- Removing duplicate entries.
- Imputing missing values where necessary.

### Data Analysis

1. **Trend Analysis**: Examined the increase in life expectancy over the period for each country.
2. **Comparative Analysis**: Compared average life expectancy between developed and developing countries using aggregate functions.
3. **Correlation Analysis**:
   - Investigated the relationship between BMI and life expectancy.
   - Analyzed the impact of GDP on life expectancy across different nations.

### SQL Techniques Used

- **GROUP BY** clauses for aggregation.
- **Window Functions** for running calculations across sets of rows related to the current row.
- **Aggregate Functions** to compute summaries like averages and sums.

## Visualizations

The results were visualized using Tableau, providing insights through various charts and graphs that illustrate the trends and correlations identified in the analysis. Screenshots of these visualizations can be found in the `Visualizations` file.

## How to Use

To run these scripts, you will need access to a MySQL server. Import the CSV file into your MySQL database, and execute the SQL scripts provided in the `Scripts` folder.

