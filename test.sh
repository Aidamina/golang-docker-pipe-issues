#!/bin/bash

# This does work
echo "test" | go run main.go

# This does work
go build -o golang-docker-pipe-issues .
echo "test" | ./golang-docker-pipe-issues

# This does not work
echo "test" | docker run --rm -i  $(docker build -q .)

# This does not work
docker run --rm -i $(docker build -q .) echo "test" | ./golang-docker-pipe-issues
