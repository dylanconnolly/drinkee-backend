require 'spec_helper'
require 'pry'
require 'shoulda-matchers'

RSpec.describe Drink, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:category)}
    it {should validate_presence_of(:alcoholic)}
    it {should validate_presence_of(:glass)}
    it {should validate_presence_of(:instructions)}
    it {should validate_presence_of(:image)}
  end
end
