#FROM ubuntu:latest
#LABEL authors="cybercringe"
#
#ENTRYPOINT ["top", "-b"]

FROM golang:1.12.0-alpine3.9
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]