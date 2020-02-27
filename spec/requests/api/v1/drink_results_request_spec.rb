require 'spec_helper'

describe 'given a user cabinet ingredients' do
  it 'can return a list of drinks able to be made from those ingredients' do
    cabinet = create(:cabinet, user_id: "1")

    amaretto = create(:ingredient, name: "Amaretto")
    baileys = create(:ingredient, name: "Bailey's Irish cream")
    cognac = create(:ingredient, name: "Cognac")
    abc = create(:drink, name: "ABC")

    abc.ingredients << amaretto
    abc.ingredients << baileys
    abc.ingredients << cognac

    dark_rum = create(:ingredient, name: "Dark rum")
    lemon_juice = create(:ingredient, name: "Lemon juice")
    grenadine = create(:ingredient, name: "Grenadine")
    adam = create(:drink, name: "Adam")

    adam.ingredients << dark_rum
    adam.ingredients << lemon_juice
    adam.ingredients << grenadine

    cabinet.ingredients << amaretto
    cabinet.ingredients << baileys
    cabinet.ingredients << cognac
    cabinet.ingredients << dark_rum
    cabinet.ingredients << lemon_juice

    get '/api/v1/1/results'

    expect(last_response).to be_successful

    results = JSON.parse(last_response.body)

    expect(results["data"].count).to eq(1)
    expect(results["data"].first["attributes"]["name"]).to eq("ABC")
  end
end
