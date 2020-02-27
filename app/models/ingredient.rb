class Ingredient < ApplicationRecord
  include ActiveModel::Validations

  has_many :drink_ingredients, dependent: :destroy
  has_many :drinks, through: :drink_ingredients
  has_many :cabinet_ingredients, dependent: :destroy
  has_many :cabinets, through: :cabinet_ingredients
end
