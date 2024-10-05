FROM golang:1.18-alpine

ARG app=main
ENV APP_ENV=${app}

RUN mkdir app
COPY ./main.go app
RUN mv app/main.go app/${app}.go

EXPOSE 8080

CMD go run ./app/${APP_ENV}.go