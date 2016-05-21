class AddBookingToPackage < ActiveRecord::Migration
  def change
    add_column :packages, :booked_at, :date
  end
end
