class SpotsController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  private

  def spot_params
  require(:spot).permit(:comment, :photo)
  end
end
