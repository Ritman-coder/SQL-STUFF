World Cup Database Automation

This project consists of a set of Bash scripts designed to automate the process of populating a PostgreSQL database from a CSV file and performing specific data analysis through SQL queries.
🚀 Features

    Automated Data Migration: insert_data.sh reads games.csv and populates the teams and games tables while handling relational constraints (Foreign Keys).

    Data Integrity: The script ensures no duplicate teams are entered into the database.

    Analysis Queries: queries.sh contains advanced SQL queries to extract statistics from the World Cup data.

    Environment Flexibility: Supports both a production (worldcup) and a testing (worldcuptest) environment.

🛠️ Tech Stack

    Language: Bash Scripting

    Database: PostgreSQL

    Data Source: CSV

📂 Project Structure

    insert_data.sh: A shell script that uses cat and while loops to parse CSV data and execute INSERT commands via psql.

    queries.sh: A collection of SQL queries to answer specific questions about the tournament history.

    games.csv: The raw dataset containing World Cup match results.

⚙️ How to Use
1. Database Setup

Ensure you have PostgreSQL installed and a database named worldcup created. You can initialize the schema using your SQL dump or manual table creation.
2. Populate the Database

Run the insertion script to move data from the CSV to your SQL tables:


<pre>
  chmod +x insert_data.sh
./insert_data.sh
</pre>

3. Run Queries

To view the results of the data analysis, execute:

<pre>
  chmod +x queries.sh
./queries.sh
</pre>


📝 Script Logic

The insertion script follows a specific logic to maintain relational integrity:

    Truncate: Clears existing data to allow for a clean re-run.

    Team Insertion: Checks if a team exists; if not, it inserts the team and retrieves the new team_id.

    Game Insertion: Uses the retrieved IDs to populate the games table with match details.




















