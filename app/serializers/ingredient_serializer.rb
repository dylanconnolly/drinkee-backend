require 'fast_jsonapi'

class IngredientSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :description, :alcohol, :abv
end
