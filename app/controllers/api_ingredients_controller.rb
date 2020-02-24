require_all 'app'

class ApiIngredientsController < ApplicationController

  get '/api/v1/ingredients' do
    content_type  :json

    ingredients = Ingredient.all

    require "pry"; binding.pry

    IngredientSerializer.new(ingredients).to_json
  end

  get '/api/v1/ingredients/:id' do
    content_type :json

    ingredient = Ingredient.find(params[:id])

    IngredientSerializer.new(ingredient).to_json
  end
end
