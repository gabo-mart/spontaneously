class AddRatingToShip < ActiveRecord::Migration
  def change
    add_column :ships, :rating, :integer
  end
end
