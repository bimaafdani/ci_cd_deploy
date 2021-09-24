all: build run

test:
	@echo "Ini test"

build: test
	@echo "Hello make"
	@echo "do something"
run:
	@go run main.go