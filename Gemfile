source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in catalogue-patrons.gemspec.
gemspec

gem "mysql2"

gem "sprockets-rails"

gem "puma", "~> 6.0"

gem "jwt", "~> 2.7"

gem "strong_migrations", "~> 1.4"

# gem "flipper"
# gem "flipper-active_record"
# gem "flipper-ui"

group :development, :test do
  gem "blacklight", "~> 8.0"

  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "standard", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false

  gem "rspec-rails", "~> 6.0"
  gem "shoulda-matchers"
  gem "factory_bot_rails"
  gem "faker"

  gem "rails-ujs"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "database_cleaner-active_record"
  gem "rails-controller-testing", "~> 1.0", ">= 1.0.5"
  gem "webmock"

  gem "simplecov", "~> 0.21.2"
  gem "simplecov-json", "~> 0.2.3"
end
