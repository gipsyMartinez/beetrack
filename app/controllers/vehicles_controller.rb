class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show]
  def index
    @vehicles = Vehicle.all
  end

  def show
    # Se muestran solo las ultimas 10
    @locations = Location.where(vehicle_id: @vehicle.id).order("id desc").limit(10)
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
