class AddReferencesToPackages < ActiveRecord::Migration
  def change
    add_reference :packages, :vendor, index: true, foreign_key: true
  end
end
