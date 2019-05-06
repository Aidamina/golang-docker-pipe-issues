# golang-docker-pipe-issues

EDIT: The fix for this problem can be found under the fix branch or in the commit below.

https://github.com/Aidamina/golang-docker-pipe-issues/commit/822c994ee79445ea384c88ad38aa32d257ffed19


The purpose of this repository was to demonstrate an issue with the golang docker containers.

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
