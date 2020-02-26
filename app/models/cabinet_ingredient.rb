class CabinetIngredient < ApplicationRecord

  belongs_to :cabinet
  belongs_to :ingredient
end
