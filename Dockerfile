FROM golang

WORKDIR /app

RUN curl -o code.zip -L https://github.com/Dionatas/devops_test/archive/refs/heads/master.zip

RUN apt-get update -y && apt-get install unzip -y

RUN unzip code.zip && cd devops_test-master && mv * ../

ADD . /app

RUN go get github.com/gorilla/mux

EXPOSE 8000

ENTRYPOINT go run main.go