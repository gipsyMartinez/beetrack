class Location < ActiveRecord::Base
  belongs_to :vehicle
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :vehicle, presence: true

  # handle_asynchronously :save
end
