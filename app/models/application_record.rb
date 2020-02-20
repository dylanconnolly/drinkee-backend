require 'sinatra/activerecord'

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
