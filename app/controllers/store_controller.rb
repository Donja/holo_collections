class StoreController < ApplicationController

  def index
    @categories = Category.order(:name)
    @manufacturers = Manufacturer.order(:name)
    @products = Product.order(:name)
  end
  
  def search
  end
  
  def search_results
    @found_products = Product.search(params[:search], params[:category])
  end
end
