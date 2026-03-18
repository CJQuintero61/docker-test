# docker-test
This folder contains files for learning the basics of working
with docker containers. The focus is on the docker files and
related commands so the python portion is simple.


### running the code using containers
    1. build the docker container: docker compose up --build -d
    2. run this python file using: docker exec my-python-container python3 src/main.py
    3. run the shell script using: docker exec my-python-container /bin/bash ./src/script.sh

    NOTE: When making changes to any files, the containers will need to be rebuilt
    to include the new changes inside the container, otherwise the code inside the
    container is how to code was when the container was built and won't include
    your new changes.

### dockerfile.backend file
    see the comments in the file directly

### docker-compose.yml file
    Here an explanation of each line in the .yml file is written.

    name: - this is the name of the docker compose project, it can be anything you want
    services: - this is the main block that lists all the services we want to build and run
    backend: - this is the name of the service we are defining, in this case, it's called "backend"
    container_name: - this is where we specify what we want the container to be named
    build: - this block is where we specify how to build the image for this service
    context: - this is where we specify the directory that contains the dockerfile
        and any other files needed for building the image
    dockerfile: - this is where we specify the name of the dockerfile to use for building this service
    command: - this is where we specify the command to run when the container starts.
        In this case, we are using 'tail -f /dev/null' to keep the container running indefinitely

### Breakdown of the commands to build and run the containers
    Here is an explanation of what each part of the commands mean to build and run the containers

    The command to build the container is: docker compose up --build -d

    docker - we are telling the system to use docker to do something
    compose - we are telling docker to use the compose file to build services
    up - after building, we are telling docker to run the containers/services
    --build - this flag tells docker to build the images before running the containers
    -d - this flag tells docker to run the containers in detached mode
        meaning it will run in the background and not block the terminal

    The command to run a file in the container: docker exec my-python-container python3 src/main.py

    exec - we are telling docker to execute something inside the container
    my-python-container - the name of the container we want to use to do something
    python3 src/main.py - we are telling the container to run 'python3 src/main.py' which will
        run our program inside the container

    To stop and remove the containers: docker compose down
    
    down - will stop and delete the current containers in the project