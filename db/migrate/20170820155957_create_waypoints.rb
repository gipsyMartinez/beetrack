class CreateWaypoints < ActiveRecord::Migration
  def change
    create_table :waypoints do |t|
      t.belongs_to :location, index: true
      t.belongs_to :vehicle, index: true
      t.datetime :sent_at
      t.timestamps null: false
    end
  end
end
