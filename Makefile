fmt:
	@echo "Formatting Go files..."
	@go vet ./...
	@go fmt ./...
	@templ fmt .

lint:
	@echo "Linting Go files..."
	@golangci-lint run ./...

update-deps:
	@echo "Updating dependencies..."
	@go get -u ./...
	@go mod tidy

run:
	@echo "Running the application..."
	@go run main.go

build:
	@echo "Building the application..."
	@go build -ldflags="-s -w" -o main .

obfuscate:
	@echo "Obfuscating and building the application..."
	@garble -tiny build -ldflags="-s -w" -o main .

