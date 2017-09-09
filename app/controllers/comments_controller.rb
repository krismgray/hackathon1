class CommentsController < ApplicationController
  before_action :set_post

  def new
    @comment = Comment.new
  end

  def create
    @comment = @post.comments.new(comment_params)

    if @comment.save
      redirect_to current_user_post_path(@post.current_user, @post)
    else
      render :new
    end
  end

private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:body, :author)
  end

end