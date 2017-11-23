class SpotsController < ApplicationController

  def index
  end

  def new
    @spot = Spot.new
  end

  def create
    place_data = JSON.parse(URI.unescape(params[:spot][:place]))
    place = Place.find_by(place_id: place_data["place_id"]) || Place.create_from_data(place_data)
    @spot = place.spots.new(spot_params)
    @spot.save
    redirect_to root_path
  end

  private

  def spot_params
    params.require(:spot).permit(:comment, :photo)
  end
end
