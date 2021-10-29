#!/bin/bash
sudo apt update
sudo apt-get upgrade -y
sudo apt-get install wget -y

# Download packages Dotnet
wget https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

# Install the SDK 
sudo apt-get update
sudo apt-get install -y apt-transport-https 
sudo apt-get update 
sudo apt-get install -y dotnet-sdk-5.0

# Install the runtime
sudo apt-get update
sudo apt-get install -y apt-transport-https 
sudo apt-get update 
sudo apt-get install -y aspnetcore-runtime-5.0
sudo apt-get install -y dotnet-runtime-5.0

# remove packages
rm -f packages-microsoft-prod.deb

# install nodejs
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt-get update
sudo apt-get install nodejs -y
npm install
npm install -g npm@8.1.2
npm install -g expo-cli
npm audit fix --force
# npm install -g create-express-api-typescript
git config --global user.email "ispanda7@gmail.com"
git config --global user.name "ispanda7"
npm start
