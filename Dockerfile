FROM ruby:3.1

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /driverhub

COPY Gemfile Gemfile.lock ./

RUN bundle update --bundler && bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
