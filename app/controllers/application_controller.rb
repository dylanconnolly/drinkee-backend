require 'sinatra'
require_all 'app'


class ApplicationController < Sinatra::Base
  set :method_override, true

  # set :root, APP_ROOT

  get '/' do
    "HEY THERE THIS IS WORKING NOW"
  end

  get '/api/v1/ingredients' do
    content_type  :json

    ingredients = Ingredient.all

    IngredientSerializer.new(ingredients).to_json
  end

  get '/api/v1/ingredients/:id' do
    content_type :json

    ingredient = Ingredient.find(params[:id])

    IngredientSerializer.new(ingredient).to_json
  end

  post '/api/v1/:user_id/cabinet' do
    Cabinet.create(user_id: params[:user_id])
  end

  patch '/api/v1/:user_id/cabinet' do
    cabinet = Cabinet.find_by_user_id(params[:user_id])
    ingredient_ids = JSON.parse(request.body.read)

    cabinet.ingredients = []

    ingredient_ids.each do |ingredient_id|
      ingredient = Ingredient.find(ingredient_id)
      cabinet.ingredients << ingredient
    end
  end

  get '/api/v1/:user_id/cabinet' do
    content_type :json

    cabinet = Cabinet.find_or_create_by(user_id: params[:user_id])

    # cabinet = Cabinet.find_by_user_id(params[:user_id])

    IngredientSerializer.new(cabinet.ingredients).to_json
  end

  get '/api/v1/:user_id/results' do
    content_type :json

    cabinet = Cabinet.find_by_user_id(params[:user_id])

    drinks = []
    Drink.all.each do |drink|
      results = drink.ingredients.map do |ingredient|
        cabinet.ingredients.include?(ingredient)
      end
      if results.include?(false)
      else
        drinks << drink
      end
    end
    drinks

    DrinkSerializer.new(drinks).to_json
  end
end


# class ApplicationController < DrinkeeApp
#
#   get '/' do
#     p "Hi"
#   end
#
#   get '/hellothar' do
#     p "Hello there person"
#   end
# end
