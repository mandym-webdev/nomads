class Submission < ActiveRecord::Base

  validates :submission_link, presence: true, uniqueness: true 

  has_many :areafeatures
  has_many :lodgingfeatures
  belongs_to :user

end

