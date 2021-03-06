FROM golang:1.12.4
WORKDIR $GOPATH/src/github.com/aidamina/golang-docker-pipe-issues
COPY . .
RUN go install -v ./...
CMD ["golang-docker-pipe-issues"]