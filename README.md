# Airport Delays Database Analytics with SQL

## Overview
This project aimed to analyze the causes of flight delays and provide solutions to improve airport service quality and minimize delays. The analysis focused on various types of delays including late aircraft arrival, airline delays, weather, security, etc. The project also created an RShiny app to display real-time visualizations of flight times and current delays for specific neighborhoods. Additionally, a predictive model was built to estimate the relationship between the SalePrice of houses and the square footage of the living area.

## Data Collection and Analysis
The dataset used in this project was sourced from Kaggle and the U.S. Department of Transportation's Bureau of Transportation Statistics, containing flight delays and cancellations. An API was utilized to pull real-time data and insert new data into the database. The analysis revealed late aircraft delays and airline delays as primary causes of delays, while security and weather delays were influenced by external factors.

## Major Insights
The analysis provided significant insights into hotspots around the country, specifically pointing out Southwest Airlines and major Southwest hubs as key contributors to delays. It also showed that by focusing on reducing specific types of delays, such as aircraft delays at Atlanta's airport, overall delays could be reduced significantly.

## Steps Taken:
1. **Database Creation**: A new database named `flights_delays` is created.

2. **Table Creation**: Three tables - `airline`, `airports`, and `flights` - are defined within the database. These tables are designed to store information about airlines, airports, and flight details respectively.

3. **Enabling Local File Loading**: The script sets a system variable to enable the loading of data from local files into the database tables.

4. **Data Loading**: Data is loaded from local CSV files into the corresponding database tables. The script specifies the delimiters used in the CSV files to correctly parse the data.

## Conclusion
The study concluded that most delays were manageable and could be improved with process improvements. It provided stakeholders with valuable insights to make informed decisions for improving operations and enhancing the passenger experience.
