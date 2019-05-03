# golang-docker-pipe-issues
Demonstrate an issue with the current version of golang docker containers.

It appears as if a compiled go app in the docker container does not have access to the stdin pipe.


This does work
```
echo "test" | go run main.go
```

This does work
```
go build -o golang-docker-pipe-issues .
echo "test" | ./golang-docker-pipe-issues
```

This does **not** work
```
echo "test" | docker run --rm -i  $(docker build -q .)
```
