class FrontendController < ApplicationController
  
  before_filter :check_cart
  
  def index
    @categories = Category.all(:order => :title)
    @products = Product.in_category(params[:category_id])
  end
  
  def add_to_cart
    if request.xhr? then                
      product = Product.find(params[:product_id])
      session[:cart].add(product)
      
      render :update do |page|
        page.replace_html 'cart_content', :partial => 'cart_content'        
      end
    end
  end
  
  protected
  
  def check_cart
    session[:cart] ||= Cart.new
  end
end
