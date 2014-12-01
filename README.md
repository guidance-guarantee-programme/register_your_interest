# Register Your Interest

[![Build Status](https://travis-ci.org/guidance-guarantee-programme/register_your_interest.svg)](https://travis-ci.org/guidance-guarantee-programme/register_your_interest)

An app to allow users to register their interest in pension guidance.

## Prerequisites

* [Bundler]
* [Git]
* [Node.js][Node]
* [NPM]
* [PostgreSQL]
* [Ruby 2.1.5][Ruby]


## Installation

Clone the repository:

```sh
$ git clone https://github.com/guidance-guarantee-programme/register_your_interest.git
```

Make sure all Ruby dependencies are available to the application:

```sh
$ bundle install
```

Make sure all Node.js dependencies are available to the application:

```sh
$ npm install
```

Create the required databases and apply the migrations:

```sh
$ createdb register_your_interest
$ createdb register_your_interest_test
$ ./bin/sequel -m db/migrations/ postgres://localhost/register_your_interest
$ ./bin/sequel -m db/migrations/ postgres://localhost/register_your_interest_test
```

## Usage

1. Ensure [Docker] and [Fig] are installed.

1. Build the stack:

```sh
$ fig build
```

1. Start the stack:

```sh
$ fig up
```

## Testing

To run the complete test suite:

```sh
$ fig run --entrypoint ./bin/rake web
```

## Heroku

To run this application on [Heroku], enable [multiple buildpack][heroku-buildpack-multi] support:

```sh
$ heroku config:add BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git
```

## Contributing

Please see the [contributing guidelines](/CONTRIBUTING.md).

[bundler]: http://bundler.io
[docker]: https://www.docker.com
[fig]: http://www.fig.sh
[git]: http://git-scm.com
[heroku]: https://www.heroku.com
[heroku-buildpack-multi]: https://github.com/ddollar/heroku-buildpack-multi
[node]: http://nodejs.org
[npm]: https://www.npmjs.org
[postgresql]: http://www.postgresql.org
[ruby]: http://www.ruby-lang.org/en
