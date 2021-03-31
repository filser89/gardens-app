class GardensController < ApplicationController
  before_action :set_garden, only: [:show]
  def index
    @gardens = Garden.all

  end

  def show
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    if @garden.save
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  def garden_params
    params.require(:garden).permit(:name, :city, :bio, :image_url)
  end
end
