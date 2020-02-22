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

  it "gets all ingredients" do
    cocktail_service = CocktailService.new
    cocktail_service.conn

    ## API returns ingredients based off ID. IDs range from 1 - 601
    response = cocktail_service.get_ingredients(1)

    expect(response["ingredients"].first["strIngredient"]).to eq("Vodka")
  end
end
