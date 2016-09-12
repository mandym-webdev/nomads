class SubmissionsController < ApplicationController

before_action :authenticate_user!, except: [:index, :show, :new]

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
    @submission.user_id = current_user.id
    if @submission.save
      redirect_to @submission
    else
      render :new
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:submission_link, :location, :lodging_type, :bedrooms, :bathrooms, :img1, :img2, :img3, :user_id)
  end
end


