# all: build run

# test:
# 	@echo "Ini test"

# build: test
# 	@echo "Hello make"
# 	@echo "do something"
# run:
# 	@go run main.go

# install:
# 	go mod tidy

# lint:
# 	go fmt ./...

# test: install
# 	go test -v ./...

# build: install
# 	go build -v .

# run: install
# 	go run main.go

install:
	@go install
test:
	@go test -v
run:
	@go run main.go
build:
	@go build -o dts-make
lint:
	@go fmt ./...
