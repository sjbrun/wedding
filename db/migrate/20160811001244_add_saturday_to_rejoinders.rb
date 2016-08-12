class AddSaturdayToRejoinders < ActiveRecord::Migration
  def change
    add_column :rejoinders, :saturday, :boolean
  end
end
