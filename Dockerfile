FROM  ruby:3.0.1

RUN mkdir /rask
WORKDIR /rask

RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y nodejs yarn postgresql-client

COPY Gemfile /rask/Gemfile
COPY Gemfile.lock /rask/Gemfile.lock
RUN bundle install