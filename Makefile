# Go parameters
LDFLAGS="-s -w"
${HOME}=()

all: test gosint_build

.DEFAULT_GOAL := gosint_build

test:
	go test -v ./...

gosint_build:
	go build -o gosint -v -ldflags=${LDFLAGS} cmd/gosint/main.go

