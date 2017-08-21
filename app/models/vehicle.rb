class Vehicle < ActiveRecord::Base
  has_many :waypoints, class_name: 'Waypoint'
  has_many :locations, through: :waypoints
  validates :vehicle_identifier, presence: true, uniqueness: true
end
