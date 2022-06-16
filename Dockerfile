FROM alpine:3.15

RUN apt update -qq && apt install -y nodejs postgresql-client

WORKDIR /driverHub

COPY Gemfile Gemfile.lock ./

RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
