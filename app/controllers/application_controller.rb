class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_spot

  def set_spot
    @spot = Spot.new
  end
end
