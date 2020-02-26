require 'spec_helper'
require 'shoulda-matchers'

RSpec.describe CabinetIngredient, type: :model do
  describe "relationships" do
    it { should belong_to :cabinet }
    it { should belong_to :ingredient }
  end
end
