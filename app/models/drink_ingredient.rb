class DrinkIngredient < ApplicationRecord
  include ActiveModel::Validations
  validates_presence_of :drink_id, :ingredient_id

  belongs_to :drink
  belongs_to :ingredient
end
