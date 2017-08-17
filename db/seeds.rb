# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  vehicle = Vehicle.create(vehicle_identifier: "vehicle 1")

  Location.create(latitude: 51.482708, longitude:  -3.165881, vehicle: vehicle)
  Location.create(latitude: 53.22952, longitude:  -4.129987, vehicle: vehicle)
  Location.create(latitude: 52.415524, longitude:  -4.063066, vehicle: vehicle)
