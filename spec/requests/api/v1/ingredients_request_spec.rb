require 'spec_helper'

describe 'ingredients request' do
  it 'returns all of the ingredients in the database' do

    get '/api/v1/ingredients'

    expect(response).to be_successfull

    ingredients = JSON.parse(response.body)["data"]
  end
end
