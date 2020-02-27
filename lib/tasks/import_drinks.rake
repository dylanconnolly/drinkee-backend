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
          # require "pry"; binding.pry
          if drink.ingredient_1 != nil && drink.ingredient_1 != ""
            ingredient = Ingredient.find_by_name(drink.ingredient_1.downcase.gsub('ä','a'))
            drink.ingredients << ingredient
          end
          if drink.ingredient_2 != nil && drink.ingredient_2 != ""
            if drink.ingredient_2 == "Bailey"
              drink.ingredients << Ingredient.find_by_name("baileys irish cream")
            else
              ingredient = Ingredient.find_by_name(drink.ingredient_2.downcase.gsub('ä','a'))
              drink.ingredients << ingredient
            end
          end
          if drink.ingredient_3 != nil && drink.ingredient_3 != ""
            ingredient = Ingredient.find_by_name(drink.ingredient_3.downcase.gsub('ä','a'))
            drink.ingredients << ingredient
          end
          if drink.ingredient_4 != nil && drink.ingredient_4 != ""
            ingredient = Ingredient.find_by_name(drink.ingredient_4.downcase.gsub('ä','a'))
            drink.ingredients << ingredient
          end
          if drink.ingredient_5 != nil && drink.ingredient_5 != ""
            ingredient = Ingredient.find_by_name(drink.ingredient_5.downcase.gsub('ä','a'))
            drink.ingredients << ingredient
          end
          if drink.ingredient_6 != nil && drink.ingredient_6 != ""
            ingredient = Ingredient.find_by_name(drink.ingredient_6.downcase.gsub('ä','a'))
            drink.ingredients << ingredient
          end
          if drink.ingredient_7 != nil && drink.ingredient_7 != ""
            ingredient = Ingredient.find_by_name(drink.ingredient_7.downcase.gsub('ä','a'))
            drink.ingredients << ingredient
          end
          if drink.ingredient_8 != nil && drink.ingredient_8 != ""
            ingredient = Ingredient.find_by_name(drink.ingredient_8.downcase.gsub('ä','a'))
            drink.ingredients << ingredient
          end
          if drink.ingredient_9 != nil && drink.ingredient_9 != ""
            ingredient = Ingredient.find_by_name(drink.ingredient_9.downcase.gsub('ä','a'))
            drink.ingredients << ingredient
          end
          if drink.ingredient_10 != nil && drink.ingredient_10 != ""
            ingredient = Ingredient.find_by_name(drink.ingredient_10.downcase.gsub('ä','a'))
            drink.ingredients << ingredient
          end
          if drink.ingredient_11 != nil && drink.ingredient_11 != ""
            ingredient = Ingredient.find_by_name(drink.ingredient_11.downcase.gsub('ä','a'))
            drink.ingredients << ingredient
          end
        end
      end
    end
  end
end
