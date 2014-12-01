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

Make sure all Bower packages are available to the application:

```sh
$ bower install
```

Create the required databases and apply the migrations:

```sh
$ createdb register_your_interest
$ createdb register_your_interest_test
$ sequel -m db/migrations/ postgres://localhost/register_your_interest
$ sequel -m db/migrations/ postgres://localhost/register_your_interest_test
```

## Usage

To start the application:

```sh
$ ./bin/foreman s
```

## Contributing

Please see the [contributing guidelines](/CONTRIBUTING.md).

[bower]: http://bower.io
[bundler]: http://bundler.io
[git]: http://git-scm.com
[node]: http://nodejs.org
[npm]: https://www.npmjs.org
[postgresql]: http://www.postgresql.org
[ruby]: http://www.ruby-lang.org/en
