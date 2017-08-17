class Api::V1::LocationsController < Api::V1::BaseController
  before_action :catch_vehicle, only: [:create]

  def create
    location = @vehicle.locations.create(locations_params)
    params[:created_at] = params[:sent_at] if params[:sent_at].present?
    if location.save
      render status: 200, json: { message: " Guardado con exito! " }
    else
      render status: 404, json: { message: " No se ha guardado! ", errors: location.errors.messages }
    end
  end

  private

    def locations_params
      params.require(:location).permit!
    end

    def catch_vehicle
      if params[:vehicle_identifier]
        @vehicle = Vehicle.find_or_create_by(vehicle_identifier: params[:vehicle_identifier])
      else
        render status: 404, json: { :message => " Debe ingresar un vehiculo" }
      end
    end

end
