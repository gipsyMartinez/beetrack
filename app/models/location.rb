class Location < ActiveRecord::Base
  has_many :waypoints, class_name: 'Waypoint'
  has_many :vehicles, through: :waypoints
  validates :latitude, presence: true
  validates :longitude, presence: true
end
