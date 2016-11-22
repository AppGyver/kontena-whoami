FROM ruby:2.3.2-alpine

RUN apk --no-cache --update add build-base

WORKDIR /app
ADD . .
