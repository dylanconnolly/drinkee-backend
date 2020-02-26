require 'spec_helper'

describe "when a post request is made to api endpoint" do
  it "receives the user id and creates a cabinet which is empy" do

    post '/api/v1/6/cabinet'

    expect(last_response).to be_successful
  end

  xit 'receives a json of ingredient ids user would like to add to their cabinet' do
    cabinet = Cabinet.create(user_id: "6")

    ingredient_ids = ["1", "2", "3", "4"]

    patch '/api/v1/6/cabinet'
  end
end
