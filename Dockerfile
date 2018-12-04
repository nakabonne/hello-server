FROM golang:1.11.0-alpine

EXPOSE 8080

WORKDIR .

COPY . .

ENV PORT 8080

RUN  go build -o hello \
     && mv ./hello /usr/local/bin

CMD ["hello"]
