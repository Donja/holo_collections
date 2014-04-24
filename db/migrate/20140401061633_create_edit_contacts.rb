class CreateEditContacts < ActiveRecord::Migration
  def change
    create_table :edit_contacts do |t|
      t.string :name
      t.string :contact_num
      t.string :email

      t.timestamps
    end
  end
end
