FROM golang:1.16

WORKDIR /app
COPY . .

RUN go build -o server .

EXPOSE 8080
ENV REQUEST_ORIGIN=https://example-frontend-xinf.onrender.com
CMD ["./server"]
