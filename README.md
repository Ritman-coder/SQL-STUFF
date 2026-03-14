SQL & Bash Automation Portfolio

This repository contains a collection of projects demonstrating database management, data migration, and interactive CLI application development using Bash and PostgreSQL.
📂 Projects Overview
1. World Cup Database (Data Migration & Analysis)

A set of scripts to automate the population of a relational database from raw CSV data and perform complex historical analysis.

    insert_data.sh: Automates the migration of match data from games.csv into a normalized SQL schema.

    queries.sh: A collection of SQL queries designed to extract specific tournament statistics.

    Key Skills: Data cleaning, handling foreign key relationships in Bash, and SQL aggregation.

2. Bike Rental Shop (Interactive CLI App)

A terminal-based application for managing a bike rental business in real-time.

    bike-shop.sh: An interactive script with menus for renting and returning bikes.

    bikes.sql: The database schema including tables for inventory, customers, and rental transactions.

    Key Skills: User input validation, dynamic SQL updates, and basic CRM (Customer Relationship Management) logic.

🛠️ Technical Stack

    Scripting: Bash (Shell)

    Database: PostgreSQL

    Data Format: CSV

    Environment: Linux

🚀 Getting Started
Database Setup

To run these projects, you will need PostgreSQL installed. You can initialize the databases as follows:

For World Cup:

<pre>
  psql --username=postgres -c "CREATE DATABASE worldcup;"
# Run the insertion script to populate
./insert_data.sh
</pre>

For Bike Shop:

<pre>
psql --username=postgres -c "CREATE DATABASE bikes;"
psql --username=postgres --dbname=bikes < bikes.sql
  
</pre>



