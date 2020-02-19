require 'bundler'
require 'sinatra'
Bundler.require

APP_ROOT = File.expand_path("..", __dir__)

# require the controller(s)
Dir.glob(File.join(APP_ROOT, 'app', 'controllers', '*.rb')).each { |file| require file }

# require the model(s)
Dir.glob(File.join(APP_ROOT, 'app', 'models', '*.rb')).each { |file| require file }

# require database configurations
require File.join(APP_ROOT, 'config', 'database')

# ActiveRecord::Base.establish_connection(
#   :adapter => 'postgresql',
#   :database => 'db/development.postgresql'
# )

class SinatraApp < Sinatra::Base
  set :method_override, true
  set :root, APP_ROOT
end
