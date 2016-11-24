#!/bin/bash

# This script provides one-step deployment to Heroku.

# PREREQISITES:
# 1. Enter the command "sh credentials.sh" to enter your credentials.
# 2. The initial deployment has already been completed.
#    The procedure is provided below.
# 3. The procedure for enabling Heroku deployments has already been
#    Completed.  The procedure is provided below.

# INITIAL HEROKU SETUP
# 1. Enter "heroku create --buildpack http://github.com/mattmanning/heroku-buildpack-ruby-jekyll.git".
#    NOTE: Without the buildpack, Heroku will NOT build the site.
# 2. Visit your assigned URL. You will see the initial Heroku splash screen.
# 3. Enter "heroku rename <new name>" to rename your app.  Visit your new URL.
# 4. Enter 'git push heroku master

# ENABLING HEROKU DEPLOYMENTS

# The URL of your Heroku site is $HEROKU_NAME.herokuapp.com
# Please fill in the value for HEROKU_NAME below.
# And then uncomment the lines below.

# HEROKU_NAME=''
# echo '--------------------'
# echo 'git remote rm heroku'
# git remote rm heroku
# echo '-----------------------------------------------------'
# echo "git remote add heroku git@heroku.com:$HEROKU_NAME.git"
# git remote add heroku git@heroku.com:$HEROKU_NAME.git

echo '----------------------'
echo 'git push heroku master'
git push heroku master

echo '-------------'
echo 'git remote -v'
git remote -v

echo '---------------------'
echo 'git config user.email'
git config user.email

echo '--------------------'
echo 'git config user.name'
git config user.name
