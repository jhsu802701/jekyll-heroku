#!/bin/bash

echo '--------------'
echo 'bundle install'
bundle install

echo '++++++++++++++++'
echo 'Rebuilding _site'
echo 'rm -rf ./_site'
rm -rf ./_site

echo '------------------'
echo 'BEGIN jekyll build'
jekyll build
echo 'FINISHED jekyll build'
echo '---------------------'
