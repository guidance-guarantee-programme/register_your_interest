# Register Your Interest

[![Build Status](https://travis-ci.org/guidance-guarantee-programme/register_your_interest.svg)](https://travis-ci.org/guidance-guarantee-programme/register_your_interest)

An app to allow users to register their interest in pension guidance.

## Prerequisites

* [Bundler]
* [Git]
* [Node.js][Node]
* [NPM]
* [PostgreSQL]
* [Ruby 2.2.0][Ruby]


## Installation

Clone the repository:

```sh
$ git clone https://github.com/guidance-guarantee-programme/register_your_interest.git
```

Setup the application:

```sh
$ ./bin/setup
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

[bundler]: http://bundler.io
[git]: http://git-scm.com
[heroku]: https://www.heroku.com
[heroku-buildpack-multi]: https://github.com/ddollar/heroku-buildpack-multi
[node]: http://nodejs.org
[npm]: https://www.npmjs.org
[postgresql]: http://www.postgresql.org
[ruby]: http://www.ruby-lang.org/en
