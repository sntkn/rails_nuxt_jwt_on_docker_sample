FROM ruby:2.4

ARG UID
RUN adduser rails --uid $UID --disabled-password --gecos ""

ENV APP /usr/src/app
RUN mkdir $APP
WORKDIR $APP

COPY Gemfile* $APP/
RUN bundle install -j3 --path vendor/bundle

COPY . $APP/

CMD bundle exec rails s -p 8080 -b 0.0.0.0
# CMD ["bundle exec rails", "server", "-p", "8080", "-b", "0.0.0.0"]
#CMD ['/c/Ruby24-x64/bin/rails', "server", "-p", "8080", "-b", "0.0.0.0"]
