require 'rails_helper'

RSpec.describe Location, type: :model do
  describe "Validations" do
    it "vehicle_identifier should be present"  do
      should validate_presence_of :latitude
    end

    it "vehicle_identifier should be present"  do
      should validate_presence_of :longitude
    end

    it "vehicle_identifier should be present"  do
      should validate_presence_of :vehicle
    end
  end

  context "Relationships" do
    it "should belong_to vehicle" do
      should belong_to(:vehicle)
    end
  end
end
