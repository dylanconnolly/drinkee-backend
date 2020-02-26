class Cabinet < ApplicationRecord
  validates_presence_of :user_id

  has_many :cabinet_ingredients
  has_many :ingredients, through: :cabinet_ingredients
end
