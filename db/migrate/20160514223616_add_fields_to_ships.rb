class AddFieldsToShips < ActiveRecord::Migration
  def change
    remove_column :ships, :length
    remove_column :ships, :activities
    add_column :ships, :length_in_feet, :integer
    add_column :ships, :guest_capacity, :integer
    add_column :ships, :onboard_crew, :integer
    add_column :ships, :description, :text
  end
end
