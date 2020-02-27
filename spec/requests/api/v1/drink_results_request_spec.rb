require 'spec_helper'

describe 'given a user cabinet ingredients' do
  xit 'can return a list of drinks able to be made from those ingredients' do
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

  it 'it returns correct drinks' do
    cabinet = create(:cabinet, user_id: "1")

    vodka = create(:ingredient, name: "Amaretto")
    gin = create(:ingredient, name: "Gin")
    rum = create(:ingredient, name: "Rum")
    tequila = create(:ingredient, name: "Tequila")
    egg_white = create(:ingredient, name: "Egg White")
    lemon_juice = create(:ingredient, name: "Lemon juice")
    grenadine = create(:ingredient, name: "Grenadine")
    triple_sec = create(:ingredient, name: "Triple Sec")
    coffee_liqueur = create(:ingredient, name: "Coffee liqueur")
    light_cream = create(:ingredient, name: "Light cream")

    cabinet.ingredients << vodka
    cabinet.ingredients << gin
    cabinet.ingredients << rum
    cabinet.ingredients << tequila
    cabinet.ingredients << lemon_juice
    cabinet.ingredients << egg_white
    cabinet.ingredients << grenadine
    cabinet.ingredients << triple_sec

    boxcar = create(:drink, name: "Boxcar")

    boxcar.ingredients << gin
    boxcar.ingredients << triple_sec
    boxcar.ingredients << lemon_juice
    boxcar.ingredients << grenadine
    boxcar.ingredients << egg_white

    white_russian = create(:drink, name: "White Russian")

    white_russian.ingredients << vodka
    white_russian.ingredients << coffee_liqueur
    white_russian.ingredients << light_cream


    get '/api/v1/1/results'

    expect(last_response).to be_successful

    results = JSON.parse(last_response.body)

    expect(results["data"].count).to eq(1)
    expect(results["data"].first["attributes"]["name"]).to eq("Boxcar")
  end
end
