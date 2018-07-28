FROM golang  
WORKDIR /src
ADD . .
RUN go test ./...
RUN go build -o /src/myapp .
CMD ["/src/myapp"]  