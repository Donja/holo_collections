class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.date :date
      t.string :shipping_address
      t.string :billing_address
      t.decimal :price

      t.timestamps
    end
  end
end
