require 'rails_helper'

RSpec.describe Waypoint, type: :model do
  context "Relationships" do
    it "should belong_to vehicle" do
      should belong_to(:vehicle)
    end
    it "should belong_to location" do
      should belong_to(:location)
    end
  end
end
