ActiveAdmin.register Product do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name, :stock_quantity, :description, :image_file_name, :manufacturer_id, :category_id, :price, :image, :image_delete
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
  form do |f|
    f.inputs :name
    f.inputs :category, :as => :select, :collection => @categories, :include_blank => true, :label_method => :title
    f.inputs :manufacturer, :as => :select, :collection => @manufacturers, :include_blank => true, :label_method => :title
    f.inputs :description
    f.inputs :price
    f.inputs :stock_quantity
    
    f.inputs "Image" do 
      f.input :image, :as => :file, :hint => (("current image:<br/>").html_safe +   f.template.image_tag(f.object.image.url(:thumb))).html_safe, required: false
      if (f.object.image.present?)       
        f.input :image_delete, as: :boolean, required: false, label: 'Remove image'
      end
    end
    
    f.actions
  end 
end
