FROM golang

WORKDIR /app

ADD . /app

RUN go get github.com/gorilla/mux

ENTRYPOINT go run main.go