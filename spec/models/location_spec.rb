require 'rails_helper'

RSpec.describe Location, type: :model do
  describe "Validations" do
    it "latitude should be present"  do
      should validate_presence_of :latitude
    end

    it "longitude should be present"  do
      should validate_presence_of :longitude
    end
  end

  context "Relationships" do
    it "should has_many waypoints" do
      should have_many(:waypoints)
    end
  end
end
