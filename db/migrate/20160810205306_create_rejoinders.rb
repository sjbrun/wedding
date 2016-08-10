class CreateRejoinders < ActiveRecord::Migration
  def change
    create_table :rejoinders do |t|
      t.string :names
      t.integer :number
      t.boolean :yes
      t.text :msg

      t.timestamps null: false
    end
  end
end
