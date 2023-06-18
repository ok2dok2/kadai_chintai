class RenameMimuteColumnToStations < ActiveRecord::Migration[6.0]
  def change
    rename_column :stations, :mimute, :minute
  end
end
