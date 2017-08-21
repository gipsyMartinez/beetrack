class Waypoint < ActiveRecord::Base
  belongs_to :location
  belongs_to :vehicle
end
