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
  
  before_validation { self.image.destroy if self.image_delete = '1' }
  
  def image_delete=(value)
    if value == '1'
      self.image = nil
    end
  end
  
  def image_delete
  end
    
  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
  end
    
end


