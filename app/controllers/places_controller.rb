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
    if current_user
      @friend_spots = Spot.friends_spots(current_user).nearby(places)
    else
      @friend_spots = Spot.nearby(places)
    end
    friend_spots_html = render_to_string(partial: "shared/friend_spots", locals: { spots: @friend_spots })

    @places = places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        place_url: place_path(place)
      }
    end

    respond_to do |format|
      format.json {
        render json: {
          places: @places,
          friend_spots: friend_spots_html
        }
      }
      format.js
    end
  end

  def nearby
    gps = params[:lat] + "," + params[:lng]
    category = params[:category]
    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=" + gps + "&type=" + category + "&rankby=distance&key=#{ENV['GOOGLE_API_SERVER_KEY']}"
    response = RestClient.get(url)
    nearby_places = response.body

    render json: nearby_places
  end

  private

  def friend_spots

  end
end
