FROM golang AS buildando
WORKDIR /app
ADD . /app
RUN go build -o meugo

FROM alpine
WORKDIR /getninjas
COPY --from=buildando /app/meugo /getninjas/
ENTRYPOINT ./meugo