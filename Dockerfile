FROM ruby:2.4

# throw errors if Gemfile has been modified since Gemfile.lock
#RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile* ./
RUN gem install bundler
RUN bundle install

COPY . .

EXPOSE 3000

CMD bash run.sh