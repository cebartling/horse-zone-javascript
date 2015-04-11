#!/usr/bin/env bash

gem install compass
nvm install 0.12.2
nvm use 0.12.2

npm install --global gulp
npm install --global  bower

npm install

bower install
