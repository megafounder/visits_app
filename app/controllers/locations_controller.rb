class LocationsController < ApplicationController
  def index
    @locations = Location.last_created(10)
  end

  def show
    @location = Location.find_by(id: params[:id])
    render '404', status: 404 unless @location
  end
end
