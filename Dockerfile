FROM ruby:alpine as build-stage
RUN apk add --no-cache build-base

WORKDIR /app
ADD Gemfile* /app/
RUN bundle install
ADD . /app

ENTRYPOINT ["ruby", "app.rb"]
