class SpotsController < ApplicationController

  def index
  end

  def new
    @spot = Spot.new
  end

  def create
  end

  private

  def spot_params
  require(:spot).permit(:comment, :photo)
  end
end
