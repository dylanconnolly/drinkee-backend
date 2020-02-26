class Ingredient < ApplicationRecord
  include ActiveModel::Validations

  has_many :drink_ingredients
  has_many :drinks, through: :drink_ingredients
end
