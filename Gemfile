source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.5"

## Rails should go at the top—it drives everything
gem "rails", "~> 6.1.0"

## These gems are managed/provided by rails new
gem "bootsnap", ">= 1.4.4", require: false
gem "pg", "~> 1.1"
gem "puma", "~> 4.1"

#authentication solution for Rails based on Warde
gem 'devise'

#authorization library 
gem 'cancancan'

## Do Not add the following gems:
# * turbolinks - we want control over how pages perform and Turbolinks is unobservable
# * spring/listen - Spring causes more problems than it solves

## Our gems - keep in alphabetical order and document why each one
##            is included in this project

# Brakeman checks for security vulns in our code
gem "brakeman"

# bundler-audit enabled bundle audit
# which analyzes our dependencies for
# known vulnerabilities
gem "bundler-audit"

# Lograge manages Rails' logging so
# it's a bit easier to deal with in prod
gem "lograge"

# sidekiq is for background job processing
gem "sidekiq"

#adaptation of the apivore gem for mini-test 
gem 'mini-apivore'

#Catch unsafe migrations 
gem 'strong_migrations'

# keep the database consistency with better performance. only ActiveRecord.
gem 'database_validations'

#A performance dashboard for Postgres
gem 'pghero'
gem 'pg_query', '>= 0.9.0'

#ultimate pagination
gem 'pagy', '~> 3.5' 

#toolkit for handling file attachments 
#gem "shrine", "~> 3.0"

#fast and secure standalone server for resizing and converting remote images
#gem "imgproxy"

#high-efficiency, advanced query library for use alongside ActiveRecord.
#gem 'occams-record'


group :development, :test do
  # Use factories for test-specific data that you need
  gem "factory_bot_rails"

  # Use Faker to generate all test data
  gem "faker"

  # This provides better test output
  gem "minitest-reporters"
end

group :development do
  gem 'scout_apm'
   gem 'pry-rails'

  #check the consistency of the database constraints
  gem 'database_consistency',  require: false
 
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "webdrivers"
end
