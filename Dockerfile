FROM golang:1.22-alpine

WORKDIR /app

COPY hello/go.mod ./
COPY hello/*.go ./
RUN go build -o hello .

CMD ./hello