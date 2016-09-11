class Submission < ActiveRecord::Base

  validates :submission_link, presence: true { message: "Please enter a listing URL." }, uniqueness: true { message: "This listing seems to already exist" }

end

