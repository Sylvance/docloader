# Docloader

A simple document management application.

## Ruby version

2.5.5

## Rails version

5.2

## Installation

- Clone this repository.
- Run `docker-compose build`.
- Run `docker-compose run web bundle install`.
- Run `docker-compose run web rake db:create`.
- Run `docker-compose run web rake db:migrate`.
- Run `docker-compose up`.
- Go to `localhost:3000` to view the application.

## Link to Hosted application

## Stopping the application

- Run `docker-compose down`.

## Restart the application

To restart the application run `docker-compose up` in the project directory.

## Rebuild the application

If you make changes to the Gemfile or the Compose file to try out some different configurations, you need to rebuild. Some changes require only `docker-compose up --build`, but a full rebuild requires a re-run of `docker-compose run web bundle install` to sync changes in the Gemfile.lock to the host, followed by `docker-compose up --build`.

## Running the bash

- Run `docker-compose run web /bin/bash`

## Running tests

- Run `docker-compose run web /bin/bash`
- Then run `rspec spec/path_to_spec_file`
  
## One-off run to create app

- Run, `heroku apps:create docloader`.
- Run this to add postgresql addon on Heroku `rails new collabfield --database=postgresql`.
- To create DB run, `heroku run --app docloader rake db:create`.

## Acknowledgements

- <https://docs.docker.com/compose/rails/>
- <https://docs.travis-ci.com/user/docker/>
- <https://docs.docker.com/registry/deploying/>
- <https://docs.travis-ci.com/user/environment-variables#encrypting-environment-variables>
- <https://edgeguides.rubyonrails.org/active_storage_overview.html>
- <https://www.engineyard.com/blog/active-storage>
- <https://tech.kartenmacherei.de/scaling-activestorage-21e962f708d7>

## Author

Sylvance Kerandi.
