## Group Information
- Group Name: group 30
- Team Members: [Chengcheng Cai, Qiqi Zhuang]
- Team Unis: [cc5054, qz2503]

## Project Description
This project aims to gain an in-depth understanding of the relationship between housing prices, greenery, and the number of 311 complaints in different areas of New York City by analyzing four datasets. 
The goal is to assist in finding the most suitable housing options within a limited budget.

## Data Set
- NYC 311
  - Source: API URL [Click Here](https://data.cityofnewyork.us/resource/erm2-nwe9.json)
  - Data: We download them as csv files. [Click Here](https://drive.google.com/file/d/1ZwlfCPdBHPAuCnvBx7n_F_0TDu-d1JWk/view?usp=drive_link)
- NYC Tree
  - Source: API URL [Click Here](https://data.cityofnewyork.us/resource/uvpi-gqnh.json)
- NYC Zipcode
  - Source: Under the `Data` Directory
- NYC Zillow
  - Source: Under the `Data` Directory
    
## Project Content
- **Part 1: Data Preprocessing**
  - Download and Clean NYC_311
  - Download and Clean NYC_tree
  - Load and Clean NYC_Zipcode
  - Load and Clean NYC_Zillow
  - Load all data
- **Part 2: Storing Data**
  - Create PostgreSQL Database and Set Postgis Extension
  - Create Tables and Indexes
  - Add Data to Database
- **Part 3: Understanding the Data**
  - Query 1 : Which area might be more calm to live in?
  - Query 2: Where has the most greenery?
  - Query 3: Can I afford a place in the areas with the most trees?
  - Query 4: Could there be a correlation between an area’s rent, the number of its trees, and the number of 311 complaints?
  - Query 5: Where has the most greenery (take 2)?
  - Query 6: What is the immediate area like?
- **Part 4: Visualizing the Data**
  - Visualization 1: What can I expect to put up with in NYC?
  - Visualization 2: What are the most common complaints in the immediate area?
  - Visualization 3: Is there any correlation between rent, trees, and complaints at all?
  - Visualization 4: If I can afford more in rent, will there be fewer issues & complaints?
  - Visualization 5: Where were the recent 311 incidents reported from in the immediate area?
  - Visualization 6: Are areas trying to improve the amount of trees in the neighborhood?
