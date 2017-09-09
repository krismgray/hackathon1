class BiosController < ApplicationController
  before_action :set_bio, only: [:edit, :show, :update]
  # before_action :set_user

  def index

  end

  def show
   
  end

  def new
    @bio = Bio.new
    render partial: 'form'
  end

  def edit
    @bio = current_user.bio
  end

  def update
    if @bio.update(bio_params)
      redirect_to bio_path(@bio)
    else
      render partial: 'form'
    end
  end

  def create
    @bio = current_user.create_bio(bio_params)

    if @bio.save
      redirect_to posts_path
    else
      render partial: 'form'
    end
  end

  # def new
  # end

  private

  # def set_user
  #   current_user = User.find(params[:user_id])
  # end 

  def set_bio
    @bio = Bio.find(params[:id])
  end

  def bio_params
    params.require(:bio).permit(:description, :display_name, :avatar)

  end
end
