⚠️ This repository has been superceeded by [nla-blacklight_common](https://github.com/nla/nla-blacklight_common). All new development will happen in that repository. ⚠️

# catalogue-patrons

[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/nla/catalogue-patrons/verify.yml?branch=main&logo=github)](https://github.com/nla/catalogue-patrons/actions/workflows/verify.yml)
[![GitHub release (latest SemVer including pre-releases)](https://img.shields.io/github/v/release/nla/catalogue-patrons?include_prereleases)](https://github.com/nla/catalogue-patrons/releases/latest)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?logo=conventionalcommits&logoColor=white)](https://conventionalcommits.org)


Common authentication logic for Blacklight and ArcLight patrons. 

Allows users and sessions to be stored in a separate database from the host application's database.

## Usage
This is an "unmounted" Rails engine. Models and actions are in the same scope as the host 
application it's integrated into.

### Configuration
This engine requires the following environment variables to be defined in the Blacklight/ArcLight 
host application:

* `DATABASE_URL` - Primary application database
* `PATRONS_DB_URL` - User and sessions database
* `GETALIBRARYCARD_BASE_URL` - Base URL of the Get A Library Card authentication endpoint
* `GETALIBRARYCARD_AUTH_PATH` - Path to the authentication endpoint
* `GETALIBRARYCARD_PATRON_DETAILS_PATH` - Path to the patron details endpoint
* `KC_SOL_CLIENT` - Staff Official Loan realm client
* `KC_SOL_SECRET` - Staff Official Loan realm client secret
* `KC_SOL_REALM` - Staff Official Loan realm name
* `KC_SPL_CLIENT` - Staff Personal Loan realm client
* `KC_SPL_SECRET` - Staff Personal Loan realm client secret
* `KC_SPL_REALM` - Staff Personal Loan realm name
* `KC_SHARED_CLIENT` - Staff Shared Account realm client 
* `KC_SHARED_SECRET` - Staff Shared Account realm client secret
* `KC_SHARED_REALM` - Staff Shared Account realm name

### Scheduled tasks
This engine uses [activerecord-session_store](https://github.com/rails/activerecord-session_store)
to store a user's session in the database rather than in a cookie. This allows more control around 
terminating a user session, as well as improved security.

This also overrides the `db:sessions:trim` and `db:sessions:clear` tasks to use the
`CatalogueSession` class that connects to the "patrons" table.

There is a scheduled task that runs `db:sessions:trim` once a day (and 15 mins after a fresh
deployment) to trim sessions older than 30 days from the database. This task is scheduled using
[rufus-scheduler](https://github.com/jmettraux/rufus-scheduler) instead of cron and configured in
`config/initializers/scheduler.rb`.

🚨 Since `rufus-scheduler` is an in-process, in-memory scheduler, it will only run tasks while 
the host application is running.

## Installation

### Gemfile
Add this line to your host application's Gemfile:

```ruby
gem "catalogue-patrons", git: "https://github.com/nla/catalogue-patrons", tag: "[choose a tag]"
```
or to use the latest code on the `main` branch:

```ruby
gem "catalogue-patrons", git: "https://github.com/nla/catalogue-patrons"
```

And then execute:
```bash
$ bundle
```

### Database configuration
Modify the host application's `config/database.yml` file to 
[support multiple databases](https://guides.rubyonrails.org/active_record_multiple_databases.html).
There is a `config/database.yml.sample` file that can be used as a guide.

Mostly it involves redefining your main database connection as the "primary" for every environment
definition in the file, then adding a "patrons" connection to every environment.

### Migrations
Migrations need to be copied into the host application from this engine using the following command:

```bash
$ rails g catalogue:patrons:install
```

🚨 This command needs to be performed whenever new migrations are added to this engine and will only
copy migrations which do not exist in the host application.

And then execute:
```bash
$ rails db:migrate
```

## Contributing
✏️ This repository uses [conventional commits](https://www.conventionalcommits.org)
and commit messages are used to generate `CHANGELOG.md` and release body entries.

The most important prefixes you should have in mind are:

* `fix:` which represents bug fixes, and correlates to a SemVer patch.
* `feat:` which represents a new feature, and correlates to a SemVer minor.
* `feat!:`, or `fix!:`, `refactor!:`, etc., which represent a breaking change (indicated by the !)
and will result in a SemVer major.

Releases are automated via GitHub workflows. See more in the ["Releases"](#releases) section below.

### Setup
`bin/setup` will configure Bundler to install gems into the `vendor/bundle` directory and install
all dependencies.

🚨 Installing gems into `vendor/bundle` serves to isolate the versions of gems used in this project
from other Ruby projects on your development machine.

### Testing
There is a `bin/ci` script that will run specs, perform linting and security analysis.

There is a GitHub Actions workflow named `verify.yml` that lints and runs the RSpec test suite
whenever the following two events occur:
* A pull request that is targeted at the `main` branch is created or updated.
* Updates are commited against the `main` branch.

### Releases
Releases are automated via the `release.yml` GitHub workflow. This uses Google's
[release-please action](https://github.com/google-github-actions/release-please-action) to create
pull requests when changes are pushed to main. It will bump the version automatically and create a
release when the pull request is merged. Read more about how
[release-please](https://github.com/googleapis/release-please) works.

Pull requests merged to `main` will also trigger the `release.yml` workflow and update an existing 
release branch and pull-request.

🚨 `CHANGELOG.md` is automatically created/updated for each release based on the commit messages.

## License
The gem is available as open source under the terms of the
[Apache 2 License](https://opensource.org/licenses/Apache-2.0).
