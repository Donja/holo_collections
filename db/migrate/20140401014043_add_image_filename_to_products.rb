class AddImageFilenameToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_filname, :string
  end
end
