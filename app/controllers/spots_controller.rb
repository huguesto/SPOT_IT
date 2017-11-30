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
    place_data = JSON.parse(URI.unescape(params[:spot][:place]))
    place = Place.find_by(place_id: place_data["place_id"]) || Place.create_from_data(place_data, params.dig(:spot, :category, :id))
    @spot = place.spots.new(spot_params)
    @spot.user = current_user
    @spot.save
    redirect_to root_path
  end

  private

  def spot_params
    params.require(:spot).permit(:comment, :photo, :user_id)
  end
end
