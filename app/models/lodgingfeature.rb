class Lodgingfeature < ActiveRecord::Base

  has_and_belongs_to_many :submissions

end