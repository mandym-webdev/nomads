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
    params.require(:submission).permit(:submission_link)
  end
end



# def create
#     @question = Question.find(params[:question_id])
#     if @question.answers.create( answer_params )
#       redirect_to @question
#     else
#       render 'new'
#     end
#   end


#    def create
#     @suggestion = Suggestion.new(suggestion_params)
#     if user_signed_in?
#       @suggestion.user = current_user
#       if @suggestion.save
#         flash[:success] = object_flash_message_for(@suggestion)
#         redirect_to after_update_object_path_for(@suggestion)
#       else
#         render :new
#       end
#     else
#       if @suggestion.valid?
#         cache_pending_object(@suggestion)
#         redirect_to preview_path(class_name: 'suggestion')
#       else
#         render :new
#       end
#     end
#   end