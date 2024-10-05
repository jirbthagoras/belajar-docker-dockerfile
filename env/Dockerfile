# import images
FROM golang:1.18-alpine

# generate an env
ENV APP_PORT=8080

# create app dir
RUN mkdir app

# copy go file
COPY ./main.go app

# run go file
EXPOSE ${APP_PORT}
CMD go run app/main.go