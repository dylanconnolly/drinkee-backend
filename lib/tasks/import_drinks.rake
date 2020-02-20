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
        formatted.each do |drink|
          Drink.create(drink.hash_data)
        end
      end
    end
  end
end
