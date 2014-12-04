# Register Your Interest

[![Build Status](https://travis-ci.org/guidance-guarantee-programme/register_your_interest.svg)](https://travis-ci.org/guidance-guarantee-programme/register_your_interest)

An app to allow users to register their interest in pension guidance.

## Prerequisites

* [Bower]
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

To start the application:

```sh
$ ./bin/foreman s
```

## Heroku

To run this application on [Heroku], enable [multiple buildpack][heroku-buildpack-multi] support:

```sh
$ heroku config:add BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git
```

## Contributing

Please see the [contributing guidelines](/CONTRIBUTING.md).

[bower]: http://bower.io
[bundler]: http://bundler.io
[git]: http://git-scm.com
[heroku]: https://www.heroku.com
[heroku-buildpack-multi]: https://github.com/ddollar/heroku-buildpack-multi
[node]: http://nodejs.org
[npm]: https://www.npmjs.org
[postgresql]: http://www.postgresql.org
[ruby]: http://www.ruby-lang.org/en
