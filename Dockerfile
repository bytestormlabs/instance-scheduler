FROM ruby:3.2.0

WORKDIR /home

COPY Gemfile* *.rb /home/
RUN bundle config set path vendor/bundle
RUN bundle install
ENTRYPOINT bundle exec ruby stop-db-cluster.rb
