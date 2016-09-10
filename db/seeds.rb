# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Submission.delete_all
Submission.create([
  {submission_link: 'answer 1a'},
  {submission_link: 'answer 1b'},
  {submission_link: 'answer 1c'},
  {submission_link: 'answer 2d'}
])