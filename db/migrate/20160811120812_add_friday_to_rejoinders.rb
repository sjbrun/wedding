class AddFridayToRejoinders < ActiveRecord::Migration
  def change
    add_column :rejoinders, :friday, :boolean
  end
end
