class AddAvatarToShips < ActiveRecord::Migration
  def change
    add_column :ships, :avatar, :string
  end
end
