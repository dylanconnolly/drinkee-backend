require 'bundler'
Bundler.require

require File.expand_path("../config/environments/#{Sinatra::Application.environment}",  __FILE__)

run ApplicationController
