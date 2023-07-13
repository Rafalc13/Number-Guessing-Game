#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USERNAME
USERNAME_ID=$($PSQL "SELECT * FROM users WHERE username='$USERNAME'")
GAMEPLAY_ID=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
TOP_GAME=$($PSQL "SELECT MIN(num_of_guesses) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
if [[ -z $USERNAME_ID ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  else
  echo -e "\nWelcome back, $USERNAME! You have played $GAMEPLAY_ID games, and your best game took $TOP_GAME guesses."
fi

RANDOM_NUM=$((1 + RANDOM % 1000))
SECRET=1
echo -e "Guess the secret number between 1 and 1000:"
while read NUM
do
  if [[ ! $NUM =~ ^[0-9]+$ ]]
  then
    echo -e "That is not an integer, guess again:"
  else
    if [[ $NUM == $RANDOM_NUM ]]
    then
    break;
    else
      if [[ $NUM > $RANDOM_NUM ]]
      then
        echo -e "\nIt's lower than that, guess again:"
      elif [[ $NUM < $RANDOM_NUM ]]
      then
        echo -e "\nIt's higher than that, guess again:"
      fi
    fi
  fi
SECRET=$((SECRET + 1))
done

if [[ $SECRET == 1 ]]
then
  echo -e "\nYou guessed it in $SECRET tries. The secret number was $RANDOM_NUM. Nice job!"
else
  echo -e "\nYou guessed it in $SECRET tries. The secret number was $RANDOM_NUM. Nice job!"
fi
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games (num_of_guesses, user_id) VALUES ('$SECRET', '$USER_ID')")