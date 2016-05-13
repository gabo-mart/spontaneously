class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :itinerary
      t.string :ship
      t.string :dates
      t.string :duration
      t.decimal :price
      t.integer :rooms
      t.integer :people
      t.string :room_type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
