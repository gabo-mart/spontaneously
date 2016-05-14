class ChangeTelphoneToString < ActiveRecord::Migration
  def change
  	change_column :users, :tel, :string
  end
end
