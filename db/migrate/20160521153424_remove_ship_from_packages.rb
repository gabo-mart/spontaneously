class RemoveShipFromPackages < ActiveRecord::Migration
  def change
    remove_column :packages, :ship
  end
end
