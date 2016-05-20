class AddActivitiesToShips < ActiveRecord::Migration
  def change
  	add_column :ships, :activities, :text
  end
end
