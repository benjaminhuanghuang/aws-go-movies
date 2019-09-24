go get -u github.com/stretchr/testify


## Test with environment variable
```
TABLE_NAME=ben-movies go test
TABLE_NAME=ben-movies go test -cover
TABLE_NAME=movies go test -cover -coverprofile=coverage.out
go tool cover -html=coverage.out -o coverage.html
```