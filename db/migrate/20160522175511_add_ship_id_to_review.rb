class AddShipIdToReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :ship, index: true, foreign_key: true
  end
end
