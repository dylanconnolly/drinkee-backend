require 'spec_helper'
require 'shoulda-matchers'

RSpec.describe Ingredient, type: :model do
  describe "validations" do
  end

  describe "relationships" do
    it { should have_many :drink_ingredients }
    it { should have_many(:drinks).through(:drink_ingredients)}
    it { should have_many :cabinet_ingredients }
    it { should have_many(:cabinets).through(:cabinet_ingredients)}
  end
end
