# Docloader
A simple document management application.

## Ruby version
2.5.5

## Rails version
5.2

## Installation
- Clone this repository.
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

## Acknowledgements
- https://docs.docker.com/compose/rails/

## Author
Sylvance Kerandi.
