# golang-docker-pipe-issues
The purpose of this repository is to demonstrate an issue with the current version(1.12.4) of golang docker containers.

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

This does **not** work
```
docker run --rm -i $(docker build -q .) echo "test" | ./golang-docker-pipe-issues
```
