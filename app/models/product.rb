require 'paperclip/media_type_spoof_detector'
module Paperclip
  class MediaTypeSpoofDetector
    def spoofed?
      false
    end
  end
end

class Product < ActiveRecord::Base
  
  
  belongs_to :category
  belongs_to :manufacturer
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  #do_not_validate_attachment_file_type :image
  
  #before_save :destroy_image?
  
  # before_validation { self.image.destroy if self.image_delete = '1' }
  
  def image_delete=(value)
    if value == '1'
      self.image = nil
    end
  end
  
  def image_delete
  end
    
  def self.search(search, category)
    search = "%" + search + "%"

    if category == 'pvc'

      Product.where("(name LIKE ? OR description LIKE ?) AND category_id = 1", search, search).order(:name)

    elsif category == 'figma'

      Product.where("(name LIKE ? OR description LIKE ?) AND category_id = 2", search, search).order(:name)

    elsif category == 'nendoroid'

      Product.where("(name LIKE ? OR description LIKE ?) AND category_id = 3", search, search).order(:name)

    else



        Product.where("name LIKE ? OR description LIKE ?", search, search)
        #Product.where("name LIKE ? OR description LIKE ?", search, search)

    end
    
  end
    
end


