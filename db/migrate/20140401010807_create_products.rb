class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :manufacturer
      t.integer :categort
      t.text :description
      t.double :price
      t.double :stock_quantity

      t.timestamps
    end
  end
end
