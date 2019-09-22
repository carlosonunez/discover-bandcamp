FROM ruby:alpine
MAINTAINER Carlos Nunez <dev@carlosnunez.me>
ARG ENVIRONMENT

RUN apk add --no-cache ruby-dev  ruby-nokogiri build-base libxml2-dev \
libxslt-dev postgresql-dev sqlite sqlite-libs sqlite-dev less

COPY Gemfile /
RUN if [ "$ENVIRONMENT"  == "test" ]; \
    then \
      bundle install; \
    else \
      bundle install --without test; \
    fi;

COPY . /app
WORKDIR /app
ENTRYPOINT [ "ruby", "bin/forwarder.rb" ]

