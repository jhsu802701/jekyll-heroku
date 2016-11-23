#!/bin/bash

# This script provides one-stop shopping for entering your credentials.
# Please run this script when you reset the Docker container.
# The "git commit" command will not work without your Git credentials.

# Output:
# First argument if it is not blank
# Second argument if first argument is blank
anti_blank () {
  if [ -z "$1" ]; then
    echo "$2"
  else
    echo "$1"
  fi
}

echo '**************************'
echo 'SETTING GITHUB CREDENTIALS'
EMAIL_DEF='you@example.com'

echo
echo "Default email address: ${EMAIL_DEF}"
echo
echo 'Enter your GitHub email address:'
read EMAIL_SEL
EMAIL=$(anti_blank $EMAIL_SEL $EMAIL_DEF)
echo

echo
echo '------------------------------'
echo "git config --global user.email"
echo "$EMAIL"
git config --global user.email "$EMAIL"

NAME_DEF='Your Name'
echo
echo "Default name: ${NAME_DEF}"
echo
echo 'Enter your GitHub name:'
read NAME_SEL

# NOTE: The double quotes are needed to avoid truncating the string
# at the space.
NAME=$(anti_blank "$NAME_SEL" "$NAME_DEF")

echo
echo '-----------------------------'
echo "git config --global user.name"
echo "$NAME"
git config --global user.name "$NAME"
echo

echo '------------'
echo 'heroku login'
heroku login

echo '---------------'
echo 'heroku keys:add'
heroku keys:add

echo
echo "Enter your app's name on Heroku:"
read APP_NAME

HEROKU_NAME=$APP_NAME
echo '--------------------'
echo 'git remote rm heroku'
git remote rm heroku

echo '-----------------------------------------------------'
echo "git remote add heroku git@heroku.com:$HEROKU_NAME.git"
git remote add heroku git@heroku.com:$HEROKU_NAME.git

echo '-------------'
echo 'git remote -v'
git remote -v
