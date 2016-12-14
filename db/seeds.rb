# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Lodgingfeature.delete_all

Lodgingfeature.create([
  {feature: 'Air Conditioning'},
  {feature: 'Cable TV'},
  {feature: 'Dish Washer'},
  {feature: 'Doorman'},
  {feature: 'Dryer'},
  {feature: 'Elevator'},
  {feature: 'Family Friendly'},
  {feature: 'Fireplace'},
  {feature: 'Gym'},
  {feature: 'Hair Dryer'},
  {feature: 'Heating'},
  {feature: 'Hot Tub'},
  {feature: 'Iron'},
  {feature: 'Kitchen'},
  {feature: 'Work Space'},
  {feature: 'Parking'},
  {feature: 'Pets'},
  {feature: 'Pool'},
  {feature: 'Smoking'},
  {feature: 'Washer'},
  {feature: 'Wheelchair Accessible'}
])

Areafeature.delete_all

Areafeature.create([
  {feature: 'Bars'},
  {feature: 'Beach'},
  {feature: 'Gym'},
  {feature: 'Public Transportation'},
  {feature: 'Restaurants'},
  {feature: 'Shopping'},
  {feature: 'Supermarket'}
])

Lodgingtype.delete_all

Lodgingtype.create([
  {lodging: 'Co-Living'},
  {lodging: 'Dorm/Hostel'},
  {lodging: 'Entire Home'},
  {lodging: 'Hotel'},
  {lodging: 'House'},
  {lodging: 'Private Room'}
])
