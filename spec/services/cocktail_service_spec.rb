require './spec/spec_helper'
require 'pry'

RSpec.describe "CocktailService" do
  it "makes API call to CocktailDB and returns JSON" do
   cocktail_service = CocktailService.new
   cocktail_service.conn

   response =cocktail_service.get_drinks("a")

   expect(response["drinks"].first["strDrink"]).to eq("A1")

   response_2 =cocktail_service.get_drinks("f")

   expect(response_2["drinks"].first["strDrink"]).to eq("Frappé")
  end
end
