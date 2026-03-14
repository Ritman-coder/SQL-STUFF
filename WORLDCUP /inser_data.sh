#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

#CLEAN ALL DATA 

echo $($PSQL "TRUNCATE teams,games")


#INSERT_DATA_TEAM

# READ CSV AND SAVE TEAM NAME IN A VARIABLE 

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do

if [[ $YEAR != year ]]
then
# SAVE WINNERS 

# VERIFY IF THERESE ON THE TABLE

TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")   
  if [[ -z $TEAM_ID ]]
  then
  #poblate name on table teams 

  TEAM_NAME=$($PSQL"INSERT INTO teams(name) VALUES('$WINNER')")
    if [[ TEAM_NAME == "INSERT 0 1" ]]
    then 
      echo Insert into teams ,$WINNER
    fi

  fi



# SAVE OPPONENTS 

# VERIFY IF THERESE ON THE TABLE

TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")   
  if [[ -z $TEAM_ID ]]
  then
  #poblate name on table teams 

  TEAM_NAME=$($PSQL"INSERT INTO teams(name) VALUES('$OPPONENT')")
    if [[ TEAM_NAME == "INSERT 0 1" ]]
    then 
      echo Insert into teams ,$OPPONENT
    fi

  fi


#POBLATE TABLE GAMES 


OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT' ")
WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER' ")

GAMES_INSERT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES ('$YEAR','$ROUND','$WIN_ID','$OPP_ID','$WINNER_GOALS','$OPPONENT_GOALS')")




fi











done 
