class BiosController < ApplicationController
  before_action :set_user

  def show
  end

  def edit
    @bio = current_user.bio
  end

  def update
    if @bio.update(bio_params)
      redirect_to bio_path
    else
      render partial 'form'
    end
  end

  def create
    @bio = current_user.bios.new(bio_params)

    if @bio.save
      redirect_to bios_path
    else
      render partial: 'form'
    end
  end

  # def new
  # end

  private

  def set_user
    current_user = User.find(params[:user_id])
  end 

  def set_bio
    @bio = Bio.find(params[:id])
  end

  def bio_params
    params.require(:bio).permit(:user_id)

  end
end
