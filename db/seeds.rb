# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Submission.delete_all

5.times do |i|
  Submission.create(submission_link: "http://testurl.com", title: "A listing.", location: "paris", lodgingtype: 1 ,bedrooms: 3, bathrooms: 2, img1: "http://i.imgur.com/bCk9Qwl.png?1", img2: "http://i.imgur.com/bCk9Qwl.png?1", img3: "http://i.imgur.com/bCk9Qwl.png?1", user_id: 1)
end

Lodgingfeatures.delete_all

Lodgingfeatures.create([
  {type: 'Air Conditioning'},
  {type: 'Cable TV'},
  {type: 'Dish Washer'},
  {type: 'Doorman'},
  {type: 'Dryer'},
  {type: 'Elevator'},
  {type: 'Family Friendly'},
  {type: 'Fireplace'},
  {type: 'Gym'},
  {type: 'Hair Dryer'},
  {type: 'Heating'},
  {type: 'Hot Tub'},
  {type: 'Iron'},
  {type: 'Kitchen'},
  {type: 'Work Space'},
  {type: 'Parking'},
  {type: 'Pets'},
  {type: 'Pool'},
  {type: 'Smoking'},
  {type: 'Washer'},
  {type: 'Wheelchair Accessible'}
])

Areafeatures.delete_all

Areafeatures.create([
  {type: 'Bars'},
  {type: 'Beach'},
  {type: 'Gym'},
  {type: 'Public Transportation'},
  {type: 'Restaurants'},
  {type: 'Shopping'},
  {type: 'Supermarket'}
])

Lodgingtypes.delete_all

Lodgingtypes.create([
  {type: 'Co-Living'},
  {type: 'Dorm/Hostel'},
  {type: 'Entire Home'},
  {type: 'Hotel'},
  {type: 'House'},
  {type: 'Private Room'}
])

