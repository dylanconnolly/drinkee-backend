require "require_all"
require 'sinatra/activerecord'
require_all "app"
require 'rake'
require 'pg'

namespace :import do
  task :drinks do
    characters = [*('a'..'z'), *('0'..'9')]

    service = CocktailService.new
    characters.each do |character|
      drink_data = service.get_drinks(character)["drinks"]
      if drink_data != nil
        formatted = drink_data.map do |data|
          DrinkDataFormatter.new(data)
        end
        formatted.each do |drink_formatted|
          drink = Drink.create(drink_formatted.hash_data)
          if ingredient_1 = Ingredient.find_by_name(drink.ingredient_1)
            drink.ingredients << ingredient_1
          end
          if ingredient_2 = Ingredient.find_by_name(drink.ingredient_2)
            drink.ingredients << ingredient_2
          end
          if ingredient_3 = Ingredient.find_by_name(drink.ingredient_3)
            drink.ingredients << ingredient_3
          end
          if ingredient_4 = Ingredient.find_by_name(drink.ingredient_4)
            drink.ingredients << ingredient_4
          end
          if ingredient_5 = Ingredient.find_by_name(drink.ingredient_5)
            drink.ingredients << ingredient_5
          end
          if ingredient_6 = Ingredient.find_by_name(drink.ingredient_6)
            drink.ingredients << ingredient_6
          end
          if ingredient_7 = Ingredient.find_by_name(drink.ingredient_7)
            drink.ingredients << ingredient_7
          end
          if ingredient_8 = Ingredient.find_by_name(drink.ingredient_8)
            drink.ingredients << ingredient_8
          end
          if ingredient_9 = Ingredient.find_by_name(drink.ingredient_9)
            drink.ingredients << ingredient_9
          end
          if ingredient_10 = Ingredient.find_by_name(drink.ingredient_10)
            drink.ingredients << ingredient_10
          end
          if ingredient_11 = Ingredient.find_by_name(drink.ingredient_11)
            drink.ingredients << ingredient_11
          end
          if ingredient_12 = Ingredient.find_by_name(drink.ingredient_12)
            drink.ingredients << ingredient_12
          end
          if ingredient_13 = Ingredient.find_by_name(drink.ingredient_13)
            drink.ingredients << ingredient_13
          end
          if ingredient_14 = Ingredient.find_by_name(drink.ingredient_14)
            drink.ingredients << ingredient_14
          end
          if ingredient_15 = Ingredient.find_by_name(drink.ingredient_15)
            drink.ingredients << ingredient_15
          end
        end
      end
    end
  end
end
