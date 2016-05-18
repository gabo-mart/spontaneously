class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :tonnage
      t.string :length
      t.integer :max_beam
      t.string :type
      t.text :activities
      t.text :other

      t.timestamps null: false
    end
  end
end
