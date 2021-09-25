FROM golang:alpine as builder

RUN mkdir /app
COPY . /app
WORKDIR /app
RUN go build -v -o main .

FROM alpine:latest
RUN mkdir /app
WORKDIR /app
COPY --from=builder /app/main /app/
CMD ["/app/main"]
