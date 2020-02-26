require 'spec_helper'
require 'shoulda-matchers'

RSpec.describe DrinkIngredient, type: :model do
  describe "validations" do
    it {should validate_presence_of(:drink_id)}
    it {should validate_presence_of(:ingredient_id)}
  end

  describe "relationships" do
    it { should belong_to :drink }
    it { should belong_to :ingredient }
  end
end
