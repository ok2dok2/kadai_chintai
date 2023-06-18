class RenameAddresColumnToHome < ActiveRecord::Migration[6.0]
  def change
    rename_column :homes, :addres, :address
  end
end
