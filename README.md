Documenting My DataBase Design - Spring Edition

Submitted by: Evan Balson
### Time spent: 30 days

<img src='https://github.com/Evan-Balson/Visual-Studio-Prime_Database-Design/blob/main/Documenting%20My%20DataBase%20Design%20-%20Spring%20Edition.png' />

# Visual Studio Prime Cinema DBMS
This design is based on the following premise: Visual-Studio Prime envisions itself as a pioneering force in the global cinema industry, committed to delivering unparalleled movie-watching experiences across its multiple locations worldwide. The company's business model revolves around providing a unique blend of cutting-edge technology, immersive entertainment, and personalized services to its customers.


## Description:
This project involved the design and implementation of a relational database system for an international movie theatre chain, Visual-Studio Prime. Utilizing tools like VS Code, MySQL, and XAMPP, the DBMS was developed to manage critical operations such as customer management, ticketing, and scheduling. The system features a scalable design with 14 entity sets, supporting efficient data handling, reporting, and customer loyalty programs. This documentation outlines the comprehensive process for building a robust database tailored to meet the real-world demands of a global enterprise.

### The project Brief:

Please be advised that this project serves as a demonstration for a hypothetical company.

This project identifies a business within the international movie theater industry that has a pressing need for an efficient relational database management system (DBMS). Currently, the company faces challenges in managing vast amounts of customer data, tracking movie schedules, handling ticket sales, and providing personalized services. These operational hurdles hinder their ability to deliver a seamless customer experience and make data-driven decisions.

To address these challenges, the project proposes a comprehensive DBMS that will streamline the organization's operations and enhance customer engagement. This solution will provide the capability to efficiently store, retrieve, and manage critical data, answering key business questions related to customer preferences, sales performance, and overall operational efficiency.

The design phase will involve creating a detailed Entity-Relationship Diagram (ERD) that maps the logical representation of the database, outlining all necessary entities and their interrelationships. This foundational step will ensure that the DBMS is aligned with the company's operational goals.

In the implementation phase, Data Definition Language (DDL) statements will be utilized to establish the database structure, which includes creating tables with appropriate constraints, such as data types, primary keys, and foreign keys. Each table will be populated with a minimum of five meaningful records to facilitate data retrieval and operational queries.

The resulting DBMS will empower the movie theater company to improve customer satisfaction, enhance resource management, and drive revenue growth through informed decision-making. Ultimately, this project aims to create a robust database solution tailored to the specific needs of the movie theater industry, thereby addressing the operational challenges faced by the business.


## Documentation:
The Documentation provides a step by step outline for for the following requirements:

### Database Design & Business Overview:
* [x] Introduction
* [x] Key elements of Visual-Studio Prime
* [x] What is an Entity-Relationship Diagram (ERD)
* [x] What is a Physical Data Model Diagram
* [x] A Detailed Outline of Visual Studio Prime
* [x] Objectives at Visual Studio Prime
* [x] The Entity Relation Diagram
* [x] The Physical Data Model Diagram
* [x] Findings & Conclusion
* [x] References

### Implementation:
* [x] Abstract
* [x] Introduction
* [x] Methodology
* [x] CREATE DATABASE
* [x] CREATE TABLE
* [x] Linkage Tables
* [x] INSERT
* [x] Testing and Validation
* [x] Test 1: Data Integrity Test Case
* [x] Test 2: Query Performance Test Case
* [x] Evan's Conclusion & Reflection
* [x] Partner's Contribution
* [x] References


## Table of Content:

1. Technologies used
2. Instructions
3. Requirements
4. Contributions
5. License Information

------------------------------------------------------------------------
# 1. TECHNOLOGIES USED:
------------------------------------------------------------------------
1. MySQL: Used as the primary database management system for storing and managing data related to the movie theater operations.
2. SQL: Utilized for writing queries to create, read, update, and delete data within the database.
3. XAMPP: A local server environment used to host the MySQL database, facilitating development and testing.
4. Visual Studio Code: The integrated development environment (IDE) used for writing and editing SQL scripts.
5. Python (optional): Can be utilized for additional data manipulation or automation tasks, if necessary.

------------------------------------------------------------------------
# 2. Instructions:
------------------------------------------------------------------------
1. Clone the repository to your local machine.
2. Navigate to the project directory in the terminal.
3. Set up the XAMPP server and ensure the MySQL module is running.
4. Open phpMyAdmin by navigating to http://localhost/phpmyadmin in your web browser.
5. Import the Sample Database:
    - Click on the Databases tab and create a new database (name it "visual_studio_prime").
    - Select the newly created database from the left sidebar.
    - Click on the Import tab.
    - Click Choose File and select the sample database file provided in the repository (e.g., visual_studio_prime.sql).
    - Click the Go button to import the database structure and data.
6. Use SQL queries to interact with the database and retrieve information as needed.
7. The diagrams in the documentation are provided in the repository and can be loaded into the website draw.io for a more detailed view:
    - ERD: ERD - Business Database Design 2024 - Coursework 1.drawio
    - PDM: PDM - Business Database Design 2024 - Coursework 2.drawio


------------------------------------------------------------------------
# 3. Requirements
------------------------------------------------------------------------
## Prerequisites:
1. MySQL: Ensure that MySQL is installed on your system. You can download it from mysql.com.

2. XAMPP: Download and install XAMPP to create a local server environment from Apache Friends.

3. SQL Client: You may want to use an SQL client such as MySQL Workbench to interact with your database more easily.

4. Python (optional): If utilizing Python for any additional tasks, ensure it is installed on your system. You can download it from python.org.

5. tabulate Library (optional): If using Python, install the tabulate library for displaying formatted tables: pip install tabulate.

------------------------------------------------------------------------
# 4. CONTRIBUTIONS
------------------------------------------------------------------------

We welcome contributions from everyone, regardless of their experience level or background.

## How to Contribute:

Testing Contributions: Test the project and report any bugs or issues you encounter. You can also contribute by writing automated tests to improve test coverage.

Feedback and Suggestions: Provide feedback on the project, suggest new features.

------------------------------------------------------------------------
# 5. LICENSE INFORMATION
------------------------------------------------------------------------

## MIT License

Copyright (c) 2024 Evan Balson, Version 1.0

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.






.