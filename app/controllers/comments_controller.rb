class CommentsController < ApplicationController
  before_filter :authenticate_user!
  def create
    @comment = Comment.new(comment_params)
    @comment.created_by_username = current_user.username # Copies These Values for later use
    @comment.created_by_id = current_user.email

    if @comment.save # checks if comment is valid
      redirect_to @workout
  end
end
