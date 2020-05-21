#!/bin/bash

clear

# Application config

application_name=BeComfy-Api
application_root_path=/home/fonter/Documents/BeComfy/BeComfy.Api

# Shell utilities

RED='\033[0;31m'
NC='\033[0m' # No Color

# Since script is run by root
cd ~/..

# Go to .csproj directory
cd ${application_csproj_path}

printf "${RED}\n-> Creating docker image ${NC}\n\n"

docker build ${application_root_path}

# Tag image, commit and push to docker hub

printf "${RED}\n-> Finish ${NC}\n\n"