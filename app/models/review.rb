class Review < ActiveRecord::Base

  belongs_to :user
  belongs_to :submission
end
