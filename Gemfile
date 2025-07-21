source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby file: ".ruby-version"

gem "rails", "~> 8.0", ">= 8.0.0"

gem "govuk_app_config", ">= 9.17.5"
gem "govuk-components"
gem "puma", "~> 6.6"
gem "sentry-rails", ">= 5.25.0"
gem "sentry-ruby"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

gem "cssbundling-rails", "~> 1.4", ">= 1.4.2"
gem "jsbundling-rails", "~> 1.3"
gem "sprockets", "~> 4.2"
gem "sprockets-rails", "~> 3.5"

group :test do
  gem "rails-controller-testing"
  gem "simplecov", require: false
  gem "simplecov-json", require: false
end

group :development, :test do
  gem "brakeman", require: false
  gem "capybara"
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "rspec-rails", ">= 7.1.1"
  gem "rubocop-govuk", require: false
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
end
