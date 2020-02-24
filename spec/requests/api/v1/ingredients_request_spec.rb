require './spec/spec_helper'

describe 'ingredients request' do
  it 'returns all of the ingredients in the database' do
    create_list(:ingredient, 10)

    get '/ingredients'

    expect(last_response).to be_successful

    ingredients = JSON.parse(last_response.body)

    expect(ingredients["data"].count).to eq(10)
  end

  it 'returns one ingredient based off id' do
    ingredient_1 = create(:ingredient, name: "Woopdidy")
    ingredient_2 = create(:ingredient, name: "Skoopdidy")

    get "/ingredients/#{ingredient_1.id}"

    expect(last_response).to be_successful

    ingredient = JSON.parse(last_response.body)

    expect(ingredient["data"]["attributes"]["name"]).to eq(ingredient_1.name)
    expect(ingredient["data"]["attributes"]["id"]).to eq(ingredient_1.id)

    get "/ingredients/#{ingredient_2.id}"

    expect(last_response).to be_successful

    ingredient = JSON.parse(last_response.body)

    expect(ingredient["data"]["attributes"]["name"]).to eq(ingredient_2.name)
    expect(ingredient["data"]["attributes"]["id"]).to eq(ingredient_2.id)
  end
end
