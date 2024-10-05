# import golang and linux alpine
FROM golang:1.18-alpine

# create a dir
RUN mkdir app

# copy main.go file
COPY ./main.go app

# exposing / give metadata about the port
EXPOSE 8080

# running go file
CMD go run app/main.go