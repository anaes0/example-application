#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install pm2
sudo npm install -g pm2
#stop any instance of your app
pm2 stop example_app
# change directory into folder where app is downloaded
cd example-application/
# install app dependencies
npm install
#start the app
pm2 start ./bin/www --name example_app