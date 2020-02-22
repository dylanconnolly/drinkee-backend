require 'bundler'
Bundler.require
require 'rack/test'

require File.expand_path("../config/environments/#{ENV['RACK_ENV']}",  __FILE__)

# ApplicationController.environment = Sinatra::Application.environment

run ApplicationController
