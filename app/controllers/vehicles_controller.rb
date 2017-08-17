class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show]
  def index
    @vehicles = Vehicle.all
  end

  def show
    @locations = Location.where(vehicle_id: @vehicle.id)
    respond_to do |format|
      format.html
      format.json { render json: { locations: @locations } }
    end
  end

  private
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end
end
