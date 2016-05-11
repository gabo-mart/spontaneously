class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :country
      t.string :address1
      t.string :address2
      t.string :region
      t.string :postal_code
      t.integer :tel
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
    add_index :users, :username, unique: true
  end
end
