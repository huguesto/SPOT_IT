class PlacesController < ApplicationController
  def index
    @places = Place.all
    # Place.near([current_user.latitude, current_user.longitude], 5, units: :km)
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      # marker.infowindow render_to_string(partial: '/components/map_box', locals: { place: place })
    end
  end

  def show
    @place = Place.find(params[:id])
    render layout: false
  end



  def filter
    if params[:lat] and params[:lng]
      places = Place.near([params[:lat], params[:lng]], 5).map do |place|
        {
          lat: place.latitude,
          lng: place.longitude,
          place_url: place_path(place)
        }
      end

      render json: places
    end
  end
end
