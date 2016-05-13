class AddVendorToShips < ActiveRecord::Migration
  def change
    add_reference :ships, :vendor, index: true, foreign_key: true
  end
end
