class SpotsController < ApplicationController

  def index
  end

  def new
    @spot = Spot.new
  end

  def create
    #@spot = Spot.new(spot_params)????
    #@spot.place = Place.find(params[:place_id])????
    #if place exists ? --> save spot & add the spot to place's show
    #else place doesn't exist --> create new place, add spot


    @spot.save
  end

  private

  def spot_params
  params.require(:spot).permit(:comment, :photo)
  end
end
