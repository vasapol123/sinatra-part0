FROM ruby:3.1.2-slim

RUN apt-get update -qq && apt-get install -y build-essential

WORKDIR /usr/src/app

COPY Gemfile* ./

RUN gem install bundler && bundle install

COPY ./ ./

EXPOSE 4000

CMD ["rerun", "--force-polling", "--", "rackup", "-p", "4000", "-o", "0.0.0.0"]
