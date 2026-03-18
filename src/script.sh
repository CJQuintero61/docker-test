#!/bin/bash

# This shell script is an example to show how
# docker containers can run a shell script on
# any device even if they don't normally support 
# shell. For example, Windows can't run shell
# scripts, but things like docker or WSL can 
# work around this issue. The container can
# instead run the shell script without Windows
# throwing an error for a shell script.

# to run:
# 1. build containers with 'docker compose up --build -d'
# 2. run the script with 'docker exec my-python-container /bin/bash ./src/script.sh'
# 3. if you make any changes, rebuild with step 1 and re run with step 2
# 4. when finished, remove the containers with 'docker compose down'

echo "Running the shell script!"