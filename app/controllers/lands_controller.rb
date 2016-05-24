class LandsController < ApplicationController
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

  private

  def land_params
    params.require(:land).permit(:address, :area, :price, :description, :image_url)
  end
end
