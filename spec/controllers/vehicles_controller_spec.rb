require 'rails_helper'

RSpec.describe VehiclesController, type: :controller do

  describe "GET index" do
    it "assigns @vehicles" do
      vehicles = Vehicle.create(vehicle_identifier: "abc")
      get :index
      expect(assigns(:vehicles)).to eq([vehicles])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show_waypoints" do
    it "assigns @vehicle" do
      vehicle = Vehicle.create(vehicle_identifier: "abc")
      get :show_waypoints, {id: vehicle.to_param}
      expect(assigns(:vehicle)).to eq(vehicle)
    end

    it "renders the show_waypoints template" do
      vehicle = Vehicle.create(vehicle_identifier: "abc")
      get :show_waypoints, {id: vehicle.to_param}
      expect(response).to render_template("show_waypoints")
    end
  end

  describe "GET show" do
    it "assigns @vehicles" do
      vehicles = Vehicle.create(vehicle_identifier: "abc")
      get :show
      expect(assigns(:vehicles)).to eq([vehicles])
    end

    it "renders the index template" do
      get :show
      expect(response).to render_template("show")
    end
  end

end
