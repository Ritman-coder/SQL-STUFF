Bike Rental Shop Automation

This project features an interactive Bash terminal application that manages a bike rental business. It uses a PostgreSQL database to track inventory, customer information, and rental transactions in real-time.
🚀 Features

    Interactive Menu: A user-friendly terminal interface for renting and returning bikes.

    Dynamic Inventory Management: Automatically filters and displays only bikes currently marked as "available".

    Customer Relationship Management: Automatically recognizes returning customers by phone number or registers new ones during the checkout process.

    Transaction Tracking: Records the exact date of rentals and updates return dates upon completion.

🛠️ Tech Stack

    Language: Bash Scripting

    Database: PostgreSQL

    CLI Tool: psql for executing SQL commands from the script.

📂 Project Structure

    bike-shop.sh: The main application script containing the logic for the menu, rentals, and returns.

    bikes.sql: A database dump file containing the schema (tables for bikes, customers, and rentals) and initial inventory data.

⚙️ Setup & Installation
1. Database Initialization

Create the database and import the schema using the provided SQL file:
Bash

# Create the database
psql --username=postgres -c "CREATE DATABASE bikes;"

# Reconstruct the schema and data
psql --username=postgres --dbname=bikes < bikes.sql

2. Run the Application

Ensure the script has execution permissions and launch it:
Bash

chmod +x bike-shop.sh
./bike-shop.sh

📊 Database Schema

The relational database is structured into three primary tables:

    bikes: Tracks bike_id, type (Mountain, Road, BMX), size, and available status.

    customers: Stores unique customer phone numbers and names.

    rentals: Links customers to bikes with date_rented and date_returned timestamps.
