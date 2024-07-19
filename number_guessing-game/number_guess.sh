#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Prompt user for username
echo "Enter your username:"
read USERNAME

# Check if user exists
USER_INFO=$($PSQL "SELECT games_played, COALESCE(best_game, 0) FROM users WHERE username = '$USERNAME'")

if [[ -z $USER_INFO ]]; then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  GAMES_PLAYED=0
  BEST_GAME=0
else
  # Handle the possibility of '|' as a delimiter
  IFS='|' read -r GAMES_PLAYED BEST_GAME <<< "$USER_INFO"

  # Convert empty values to 0 for display
  if [[ -z $BEST_GAME ]]; then
    BEST_GAME=0
  fi

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate secret number
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# Initialize guess count
NUMBER_OF_GUESSES=0

while true; do
  echo "Guess the secret number between 1 and 1000:"
  read GUESS

  # Check if guess is an integer
  if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  # Increment guess count
  NUMBER_OF_GUESSES=$(( NUMBER_OF_GUESSES + 1 ))

  # Check guess
  if [[ $GUESS -lt $SECRET_NUMBER ]]; then
    echo "It's higher than that, guess again:"
  elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
    echo "It's lower than that, guess again:"
  else
    echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
    break
  fi
done

# Update user information
if [[ -z $USER_INFO ]]; then
  # Insert new user
  $PSQL "INSERT INTO users (username, games_played, best_game) VALUES ('$USERNAME', 1, $NUMBER_OF_GUESSES)" > /dev/null
else
  # Update number of games played
  $PSQL "UPDATE users SET games_played = games_played + 1 WHERE username = '$USERNAME'" > /dev/null
  
  # Update best game if necessary
  if [[ $NUMBER_OF_GUESSES -lt $BEST_GAME || $BEST_GAME -eq 0 ]]; then
    $PSQL "UPDATE users SET best_game = $NUMBER_OF_GUESSES WHERE username = '$USERNAME'" > /dev/null
  fi
fi
