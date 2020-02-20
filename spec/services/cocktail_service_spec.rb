require './spec/spec_helper'
require 'pry'

RSpec.describe "CocktailService" do
  it "gets all drinks" do
   cocktail_service = CocktailService.new
   cocktail_service.conn

   response = cocktail_service.get_drinks("a")

   expect(response["drinks"].first["strDrink"]).to eq("A1")

   response_2 =cocktail_service.get_drinks("f")

   expect(response_2["drinks"].first["strDrink"]).to eq("Frappé")
  end

  xit "gets all ingredients" do
    cocktail_service = CocktailService.new
    cocktail_service.conn

    number = 37
    array = []
    response = cocktail_service.get_ingredients(number)

    until number == 601 do
      response = cocktail_service.get_ingredients(number)
      if response["ingredients"] != nil
        response_name = response["ingredients"].first["strIngredient"]
        array << response_name
        number += 1
      else
        number += 1
      end
    end

    expect(response["ingredients"].first["strIngredient"]).to eq("Vodka")
  end
end
