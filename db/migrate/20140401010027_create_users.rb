class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password
      t.string :address
      t.string :city
      t.string :province
      t.string :city

      t.timestamps
    end
  end
end
