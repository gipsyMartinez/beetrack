require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  describe "Validations" do
    it "vehicle_identifier should be present"  do
      should validate_presence_of :vehicle_identifier
    end

    it 'vehicle_identifier should be uniq' do
      should validate_uniqueness_of :vehicle_identifier
    end
  end

  context "Relationships" do
    it "should have_many locations" do
      should have_many(:locations).dependent(:destroy)
    end
  end
end
