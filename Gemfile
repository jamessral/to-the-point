# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.2.2'
gem 'importmap-rails'
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'rails', '~> 7.1.1'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

gem 'bcrypt', '~> 3.1.7'
gem 'jbuilder'
gem 'redis', '>= 4.0.1'

gem 'tzinfo-data', platforms: %i[windows jruby]

gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: %i[mri windows]
  gem 'rubocop'
  gem 'rubocop-capybara'
  gem 'rubocop-rails'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end
