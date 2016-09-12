class Submission < ActiveRecord::Base

  validates :submission_link, presence: true, uniqueness: true 

end

