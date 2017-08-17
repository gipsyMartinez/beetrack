class Location < ActiveRecord::Base
  belongs_to :vehicle
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :vehicle, presence: true
end
