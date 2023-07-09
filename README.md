# Good night app

“good night” application to let users track when do they go to bed and when do they wake up.
We require some restful APIS to achieve the following:
1. Clock In operation, and return all clocked-in times, ordered by created time.
2. Users can follow and unfollow other users.
3. See the sleep records of a user’s All following users’ sleep records. from the previous week, which are sorted based on the duration of All friends sleep length.

## Provisioning

Run the following commands to prepare your Docker dev env:
```
$ docker-compose build

$ docker-compose run runner chmod +x ./bin/setup
$ docker-compose run runner ./bin/setup
```
It builds the Docker image, installs Ruby , creates database, run migrations and seeds.
You're all set! Now you're ready to code!

## Running The App
```
$ docker-compose up rails
$ docker-compose up sidekiq
```
## Tests and CI
```
$ docker-compose run runner chmod +x ./bin/ci
$ docker-compose run runner ./bin/ci
```
contains all the tests and checks for the app

`tmp/test.log` will use the production logging format
    *not* the development one.

## Development Rules

This app does: Rails api
* SQL-based schema management so you can use any feature of Postgres you like
* Does Not Business Logic in Active Records. Use A simple base ApplicationService and a service class generator bin/rails g service MyThing to encourage putting code in app/services
* All datetime fields in migrations uses timestamp with time zone which is the proper type in Postgres.
* A method confidence_check to allow validating assumptions in tests separate from asserting code behavior.
* A method not_implemented! to allow skipping a test you have not implemented
* A test to lint all your factories

## Others
```
bin/sql get a SQL prompt to your local database
bin/db-{migrate,rollback} - migrate and rollback both dev and test in one command
bin/release - Release phase script for Heroku to run migrations
```
