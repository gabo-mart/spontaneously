class AddDiningToShips < ActiveRecord::Migration
  def change
    add_column :ships, :dining, :text
  end
end
