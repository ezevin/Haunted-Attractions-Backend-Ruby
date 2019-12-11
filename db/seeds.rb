# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


leap = Attraction.new(name: "Leap Castle", country:"Ireland")
ireland = Trip.create(trip_name: "Ireland", attraction_id: 1)
jane = User.create(username: "jill", password_digest: "wow")
