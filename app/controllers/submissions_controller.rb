class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
  end

  def new
    @submission = Submission.new
  end

  def show
    @submission = Submission.find( params[:id] )
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
    params.require(:submission).permit(:submission_link, :location, :lodging_type, :bedrooms, :bathrooms, :img1, :img2, :img3)
  end
end


