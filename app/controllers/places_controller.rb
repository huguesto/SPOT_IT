class PlacesController < ApplicationController
  def index
    @places = Place.all
    # Place.near([current_user.latitude, current_user.longitude], 5, units: :km)
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow render_to_string(partial: '/components/map_box', locals: { place: place })
    end
  end

  def show

  end
end
