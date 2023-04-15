#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

LOOK_UP_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
GET_USERNAME=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")


if [[ -z $LOOK_UP_USER ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  ADD_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT (*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(attempts) FROM games WHERE user_id=$USER_ID")
  echo "Welcome back, $GET_USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses. "
fi


RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))
NUMBER_OF_GUESSES=0

GUESS_NUMBER() {
  read GUESSED_NUMBER
  NUMBER_OF_GUESSES=$(( $NUMBER_OF_GUESSES+1))
  if [[ ! $GUESSED_NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    GUESS_NUMBER
  else
    if [[ $GUESSED_NUMBER -gt $RANDOM_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
      GUESS_NUMBER
    elif [[ $GUESSED_NUMBER -lt $RANDOM_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
      GUESS_NUMBER
    elif [[ $GUESSED_NUMBER -eq $RANDOM_NUMBER ]]
    then
      echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"
      USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
      GET_GAME_ID=$($PSQL "SELECT MAX(game_id) FROM games WHERE user_id=$USER_ID")
      if [[ -z $GET_GAME_ID ]]
      then
        ADD_GAME=$($PSQL "INSERT INTO games(user_id, game_id, attempts) VALUES($USER_ID, 1, $NUMBER_OF_GUESSES)")
      else
        GET_GAME_ID=$(( $GET_GAME_ID + 1 ))
        ADD_GAME=$($PSQL "INSERT INTO games(user_id, game_id, attempts) VALUES($USER_ID, $GET_GAME_ID, $NUMBER_OF_GUESSES)")
      fi
    fi
  fi
}

echo "Guess the secret number between 1 and 1000:"
GUESS_NUMBER