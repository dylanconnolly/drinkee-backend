require 'bundler'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require 'rake'
Bundler.require

APP_ROOT = File.expand_path("..", __dir__)

# require the controller(s)
Dir.glob(File.join(APP_ROOT, 'app', 'controllers', '*.rb')).each { |file| require file }

# require the model(s)
Dir.glob(File.join(APP_ROOT, 'app', 'models', '*.rb')).each { |file| require file }

# require sevice(s)
Dir.glob(File.join(APP_ROOT, 'app', 'services', '*.rb')).each { |file| require file }

# require database configurations
require File.join(APP_ROOT, 'database')

# ActiveRecord::Base.establish_connection(
#   :adapter => 'postgresql',
#   :database => 'db/development.postgresql'
# )

# class DrinkeeApp < Sinatra::Base
#   set :method_override, true
#   set :root, APP_ROOT
# end
require_all 'app'
