.PHONY: build
build:
	go build -o ./build/micro-gateway main.go

.PHONY: run
run:build
	./build/micro-gateway  --registry=consul api -handler=http

.PHONY: clean
clean:
	rm ./build/*

.PHONY: test
test:
	go test -v ./... -cover