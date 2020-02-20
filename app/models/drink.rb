class Drink < ApplicationRecord
  include ActiveModel::Validations
  validates_presence_of :name
  validates_presence_of :category
  validates_presence_of :alcoholic
  validates_presence_of :glass
  validates_presence_of :instructions
  validates_presence_of :image
end
