class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @comment = Comment.new
  end
  def create
    @comment = Comment.new(comment_params)
    @comment.username = current_user.username # Copies These Values for later use

    if @comment.save # checks if comment is valid
      redirect_to :controller => "workouts", :action => "index"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:username, :text)
  end
end
