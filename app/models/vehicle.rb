class Vehicle < ActiveRecord::Base
  has_many :locations, class_name: Location, dependent: :destroy
  validates :vehicle_identifier, presence: true, uniqueness: true
end
