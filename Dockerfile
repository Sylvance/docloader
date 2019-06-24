FROM ruby:2.5
LABEL email="kerandisylvance@gmail.com"
LABEL version=3.1

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /docloader
WORKDIR /docloader
COPY Gemfile /docloader/Gemfile
COPY Gemfile.lock /docloader/Gemfile.lock
RUN bundle install
COPY . /docloader

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
