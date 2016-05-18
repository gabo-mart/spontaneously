class AddFieldsToShips < ActiveRecord::Migration
  def change
<<<<<<< HEAD
    # change_column :ships, :tonnage, :integer
    change_column :ships, :max_beam, :integer
=======
>>>>>>> f502eb8e2e64054767b0a77689915d369b3c6654
    remove_column :ships, :length
    remove_column :ships, :activities
    add_column :ships, :length_in_feet, :integer
    add_column :ships, :guest_capacity, :integer
    add_column :ships, :onboard_crew, :integer
    add_column :ships, :description, :text
  end
end
