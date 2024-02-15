# juliatest

A simple little REST API server written in Julia exposing some statistical functions.

# Building the Docker container

To build the container

    docker build -t juliatest .

To run the docker container

    docker run -it -p 8080:8080 juliatest

# Using the REST API

To sum a list of numbers

    curl http://127.0.0.1:8080/sum?nums=10,20,30

To determine the median of a list of numbers

    curl http://127.0.0.1:8080/median?nums=10,20,30

To determine the mean of a list of numbers

    curl http://127.0.0.1:8080/mea?nums=10,20,30

