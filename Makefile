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

.PHONY: docker
docker:
	CGO_ENABLED=0 GOOS=linux go build -o micro-gateway main.go
	docker build . -t xuxu123/micro-gateway:latest
	rm micro-gateway