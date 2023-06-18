class AddHomeRefToStations < ActiveRecord::Migration[6.0]
  def change
    add_reference :stations, :home, null: false, foreign_key: true
  end
end
