class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vehicle_identifier
      t.timestamps null: false
    end
  end
end
