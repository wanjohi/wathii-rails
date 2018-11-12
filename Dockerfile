FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /test-rails-app
WORKDIR /test-rails-app
COPY . /test-rails-app
# COPY Gemfile /test-rails-app/Gemfile
# COPY Gemfile.lock /test-rails-app/Gemfile.lock
RUN bundle install