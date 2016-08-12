class AddSundayToRejoinders < ActiveRecord::Migration
  def change
    add_column :rejoinders, :sunday, :boolean
  end
end
