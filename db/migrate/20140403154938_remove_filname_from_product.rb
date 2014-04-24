class RemoveFilnameFromProduct < ActiveRecord::Migration
  def change
    remove_column :products, :image_filname, :string
  end
end
