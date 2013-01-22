# eventbrite-to-pg

This utlity makes it easy to transfer your attendee report from EventBrite's CSV output into a Postgres database, making it possible to run SQL queries against your data.

## Options

`DATABASE_URL` - The postgres url to use for setting up your database migrations and inserting your data.

`EVENTBRITE_CSV` - Path to the CVS file downloaded from the EventBrite website.

## Usage

```
$ export DATABASE_URL=postgres://user:pass@hostname/database
$ export EVENTBRITE_CSV=~/path/to/Attendees-12345678.csv
$ bundle install
$ bundle exec rake db:migrate:up
$ ruby bin/run
```

## Starting Over

```
$ bundle exec rake db:migrate:reset
$ ruby bin/run
```
