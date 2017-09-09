require 'pry'

class CommentsController < ApplicationController
  before_action :set_post

  def new
    @comment = Comment.new
    render partial: 'form'
  end

  def create
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to posts_path
    else
      render partial: 'form'
    end
  end

private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:message, :user_id)
  end

end