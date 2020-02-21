require "require_all"
require 'sinatra/activerecord'
require_all "app"
require 'rake'
require 'pg'

namespace :import do
  task :ingredients do
    ingredient_ids = (1..602).to_a

    service = CocktailService.new
    ingredient_ids.each do |ingredient_id|
      ingredient_data = service.get_ingredients(ingredient_id)["ingredients"]
      if ingredient_data != nil
        formatted = ingredient_data.map do |data|
          IngredientDataFormatter.new(data)
        end
        formatted.each do |drink|
          Ingredient.create(drink.hash_data)
        end
      end
    end
  end
end
