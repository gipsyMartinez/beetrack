# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  vehicle = Vehicle.create(vehicle_identifier: 'Vehicle one')
  location = Location.create(latitude: 52.404224, longitude:  -5.0785248)
  waypoint = Waypoint.create(location_id: location.id, vehicle_id: vehicle.id, sent_at: DateTime.now)

