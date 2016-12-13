class Submission < ActiveRecord::Base

  validates :submission_link, presence: true, uniqueness: true 

  has_and_belongs_to_many :areafeatures
  has_and_belongs_to_many :lodgingfeatures
  belongs_to :user

end

