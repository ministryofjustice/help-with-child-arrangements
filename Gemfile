source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read(".ruby-version").strip

gem "rails", "~> 7.1.0"

gem "bootsnap", require: false
gem "govuk_app_config"
gem "govuk-components"
gem "govuk_design_system_formbuilder"
gem "jbuilder"
gem "puma", "~> 6.3"
gem "sentry-rails"
gem "sentry-ruby"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

gem "cssbundling-rails", "~> 1.3"
gem "jsbundling-rails", "~> 1.1"
gem "sprockets", "~> 4.2"
gem "sprockets-rails", "~> 3.4"

group :test do
  gem "rails-controller-testing"
end

group :development, :test do
  gem "brakeman", require: false
  gem "capybara"
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "rspec-rails"
  gem "rubocop-govuk", require: false
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
end
