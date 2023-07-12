#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
  read USERNAME

  USERNAME_CHARACTERS=$(echo $USERNAME | wc -c)
  if [[ $USERNAME_CHARACTERS -gt 22 ]]
  then
    ASK_USERNAME
  fi
USERNAME_ID=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")
GAMEPLAY_ID=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username = '$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(number_guesses) FROM users INNER JOIN games USING(user_id) WHERE username = '$USERNAME'")

if [[ -z $USERNAME_ID ]]; then
INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
echo -e "\nWelcome back, $USERNAME! You have played $GAMEPLAY_ID games, and your best game took $BEST_GAME guesses."
fi

RANDOM_NUM=$((1 + RANDOM % 1000))
GUESS=1

echo -e "\nGuess the secret number between 1 and 1000:"
while read -r NUM
do
if [[ ! $NUM =~ ^[0-9]+$ ]]; then
echo -e "\nThat is not an integer, guess again:"
else
if [[ $NUM -eq $RANDOM_NUM ]]; then
break
else
if [[ $NUM -gt $RANDOM_NUM ]]; then
echo -e "\nIt's lower than that, guess again:"
elif [[ $NUM -lt $RANDOM_NUM ]]; then
echo -e "\nIt's higher than that, guess again:"
fi
fi
fi
GUESS=$((GUESS + 1))
done

if [[ $GUESS == 1 ]]; then
echo -e "\nYou guessed it in $GUESS try. The secret number was $RANDOM_NUM. Nice job!"
else
echo -e "\nYou guessed it in $GUESS tries. The secret number was $RANDOM_NUM. Nice job!"
fi

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games (number_guesses, user_id) VALUES ('$GUESS', '$USER_ID')")