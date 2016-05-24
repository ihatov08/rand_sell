class LandsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @lands = Land.all
  end

  def new
    @land = Land.new
  end

  def create
    @land = Land.new(land_params)
    if @land.save
      redirect_to @land
    else
      render :new
    end
  end

  def show
    @land = Land.find(params[:id])
    @comment = Comment.new
    @comments = @land.comments
  end

  def edit
    @land = Land.find(params[:id])
  end

  def update
    @land = Land.find(params[:id])
    if @land.update(land_params)
      redirect_to @land
    else
      render :edit
    end
  end

  def destroy
    @land = Land.find(params[:id])
    @land.destroy
    redirect_to lands_url
  end

  def like
    @land = Land.find(params[:land_id])
    @like = Like.new(user_id: current_user.id, land_id: @land.id)
    @like.save
    redirect_to @land
  end

  def unlike
  end

  private

  def land_params
    params.require(:land).permit(:address, :area, :price, :description, :image_url, :user_id, :land_id)
  end
end
