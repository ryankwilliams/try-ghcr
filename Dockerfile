FROM golang:latest
WORKDIR /usr/src/app
ADD try-ghcr.go .
RUN go build -o /usr/local/bin/try-ghcr try-ghcr.go
CMD [ "try-ghcr" ]
