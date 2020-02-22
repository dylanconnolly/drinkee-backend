require './spec/spec_helper'

describe 'ingredients request' do
  it 'returns all of the ingredients in the database' do
    create_list(:ingredient, 10)

    get '/ingredients'

    expect(last_response).to be_successful

    ingredients = JSON.parse(last_response.body)

    expect(ingredients["data"].count).to eq(10)
  end
end
