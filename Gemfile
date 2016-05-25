source 'https://rubygems.org'


gem 'rails', '~> 4.2.0'
gem 'pg'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'letter_opener'
  gem 'parallel_tests'
  gem 'thin-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'db-query-matchers'
  gem 'shoulda-matchers', require: false
  gem 'timecop'
  gem 'webmock'
  gem 'rspec-instafail', require: false
end

group :development, :test do
  gem 'byebug'
  gem 'guard-rspec'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-byebug', '>= 3.1.0'
  gem 'pry-remote'
  gem 'rspec-its'
  gem 'rspec_junit_formatter', '0.2.2'
  gem 'rspec-rails', '~> 3.4.2'
  gem 'rubocop', require: false
  gem 'factory_girl_rails', '~> 4.5'
  gem 'faker'
end
