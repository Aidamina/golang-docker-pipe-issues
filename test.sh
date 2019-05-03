#!/bin/bash

# This does work
echo "test" | go run main.go

# This does not work
echo "test" | docker run --rm -i  $(docker build -q .)
