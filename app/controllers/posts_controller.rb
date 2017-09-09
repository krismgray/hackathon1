class PostsController < ApplicationController
  # before_action :set_user
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = current_user.posts
  end

  def show
  end

  def new
    @post = current_user.posts.new
    render partial: 'form'
  end

  def edit
    render partial: 'form'
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to posts_path
    else
      render partial: 'form'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path
    else
      render partial: 'form'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

    def set_user
      current_user = User.find(params[:user_id])
    end

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:content, :body)
    end

end