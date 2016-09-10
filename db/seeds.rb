# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Submission.delete_all

5.times do |i|
  Submission.create(submission_link: "Link ##{i}", title: "A product.", location: "paris", bedrooms: 3, bathrooms: 2, img1: "img")
end

