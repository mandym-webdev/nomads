class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
  end

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      redirect_to @submission
    else
      render :new
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:submission_link, :location, :bedrooms, :bathrooms, :img1, :img2, :img3)
  end
end


