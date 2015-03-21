#! /usr/bin/env bash

# update packages
apt-get update

# needed installs
apt-get install -y git
apt-get install -y curl

# Need for Node
apt-add-repository ppa:chris-lea/node.js
apt-get update -y
apt-get install -y nodejs
apt-get install -y npm
npm install -g npm -y

# Need to set the node registry...
npm config set registry http://registry.npmjs.org/

# npm's version of a node version manager
npm cache clean -f
npm install -g n
sudo n stable -y

# Giving the user rights to the npm directories
chown -R $USER ~/.npm
chown -R $USER /usr/local/lib/node_modules


# wanted installs
apt-get install fish -y
apt-get install -y sl
apt-get install -y tree
