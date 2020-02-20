# frozen_string_literal: true

source "https://rubygems.org"

# gem "rails"
gem 'rack'
gem 'sinatra', :require => 'sinatra/base'
gem 'shotgun'
gem 'pry'
gem 'activerecord'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'pg'
gem 'require_all'
gem 'faraday'

group :test do
  gem 'rspec'
  gem 'rack-test'
end

group :development, :test do
  gem "shoulda-matchers", "~> 2.4.0", require: false
  gem "activemodel", require: "active_model"
end
