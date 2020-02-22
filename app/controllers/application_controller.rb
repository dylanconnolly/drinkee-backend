require 'sinatra'

class ApplicationController < Sinatra::Base
  # set :method_override, true
  # set :root, APP_ROOT

  get '/' do
    "HEY THERE THIS IS WORKING NOW"
  end
end

# class ApplicationController < DrinkeeApp
#
#   get '/' do
#     p "Hi"
#   end
#
#   get '/hellothar' do
#     p "Hello there person"
#   end
# end
