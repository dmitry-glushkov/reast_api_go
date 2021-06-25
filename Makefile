.PHONY: build
build:
	go build -v ./cmd/apiserver

.PHONY: test
test:
	go test -v -race -timeout 30s github.com/dmitry-glushkov/reast_api_go/internal/app/apiserver
.DEFAULT_GOAL := build