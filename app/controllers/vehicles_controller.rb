class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show_waypoints]
  def index
    @vehicles = Vehicle.all
  end

  def show
    # Ultima ubicacion por cada vehiculo
    @vehicles = Vehicle.all
    @vehicles_last_location = @vehicles.map{ |v| v.locations.last }
    respond_to do |format|
      format.html
      format.json { render json: { locations: @vehicles_last_location } }
    end
  end

  def show_waypoints
  end

  private
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end
end
