FROM ruby:2.3.1-alpine

WORKDIR /app

ADD Gemfile .
ADD Gemfile.lock .

RUN bundle install --without "development test"

ADD . .
