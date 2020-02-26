require 'spec_helper'
require 'shoulda-matchers'

RSpec.describe Cabinet, type: :model do
  describe "validations" do
    it { should validate_presence_of(:user_id)}
  end

  describe "relationships" do
    it { should have_many :cabinet_ingredients }
    it { should have_many(:ingredients).through(:cabinet_ingredients)}
  end
end
