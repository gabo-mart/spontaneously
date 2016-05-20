class ChangeDatefieldFromPackages < ActiveRecord::Migration
  def change
  	remove_column :packages, :dates
  	add_column :packages, :start_date, :date
  	add_column :packages, :end_date, :date
  end
end
