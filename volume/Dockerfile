# import images
FROM golang:1.18-alpine

# generate an env
ENV APP_PORT=8080
ENV APP_DATA=/logs

# create app dir
RUN mkdir ${APP_DATA}
RUN mkdir app

# copy go file
COPY ./main.go app

# run go file
EXPOSE ${APP_PORT}
VOLUME ${APP_DATA}

CMD go run app/main.go