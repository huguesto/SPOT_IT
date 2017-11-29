class PlacesController < ApplicationController
  def index
  end

  def show
    @place = Place.find(params[:id])
    render layout: false
  end

  def filter
    if params[:lat] && params[:lng]
      places = Place.near([params[:lat], params[:lng]], 5)
    elsif params[:search]
      places = Place.near(params.dig(:search, :address), 5)
      if params.dig(:search, :choice).present?
        places = places.where(category_id: params.dig(:search, :choice))
      end
    end

    @places = places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        place_url: place_path(place)
      }
    end

    respond_to do |format|
      format.json { render json: @places }
      format.js
    end
  end

  def nearby
    gps = params[:lat] + "," + params[:lng]
    category = params[:category]
    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=" + gps + "&type=" + category + "&rankby=distance&key=#{ENV['GOOGLE_API_SERVER_KEY']}"
    response = RestClient.get(url)
    nearby_places = response.body

    # @friend_spots = Spot.where(user: current_user.friends, place: Place.near("Bordeaux").map(&:id))
    # render_to_string the partial of last friends spots in our area

    render json: {
      nearby_places: nearby_places
    }
  end
end
