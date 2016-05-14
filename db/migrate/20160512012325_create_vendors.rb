class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :company
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
