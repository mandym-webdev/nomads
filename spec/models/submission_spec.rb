require 'rails_helper'


describe Submission do

  it { should validate_presence_of(:submission_link) }
  it { should validate_uniqueness_of(:submission_link) }

end