class Api::V1::LocationsController < Api::V1::BaseController
  before_action :catch_vehicle, only: [:create]

  def create
    # Se guarda la coordenada y la relacion en la tabla de enlace, luego con el proceso asincrono (delay) se guarda el dato adicional
    # esto inserta un registro en la tabla delayed_jobs, el cual se ejecutara
    # al colocar el siguiente comando en la consola rake jobs:work
    sent_at = params[:sent_at].present? ? params[:sent_at] : DateTime.now
    @location = @vehicle.locations.create(locations_params)
    @location.save
    @waypoint = Waypoint.find_by(vehicle_id: @vehicle.id, location_id: @location.id)
    @waypoint.delay.update(sent_at: sent_at)
    if @location.save
      render status: 200, json: { message: " Guardado con exito! " }
    else
      render status: 404, json: { message: " No se ha guardado! ", errors: @location.errors.messages }
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
