class DeleteColumnsFromShips < ActiveRecord::Migration
  def change
    remove_column :ships, :max_beam
    remove_column :ships, :type
    remove_column :ships, :other
    remove_column :ships, :description
  end
end
