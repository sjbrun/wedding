class AddNoToRejoinder < ActiveRecord::Migration
  def change
    add_column :rejoinders, :no, :boolean
  end
end
