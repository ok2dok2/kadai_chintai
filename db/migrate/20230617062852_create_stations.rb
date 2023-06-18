class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.text :route
      t.text :station
      t.integer :mimute

      t.timestamps
    end
  end
end
