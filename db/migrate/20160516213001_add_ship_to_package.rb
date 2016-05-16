class AddShipToPackage < ActiveRecord::Migration
  def change
    add_reference :packages, :ship, index: true, foreign_key: true
  end
end
