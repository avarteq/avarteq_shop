class FrontendController < ApplicationController
  
  before_filter :check_cart, :load_categories 
  
  protected
  
  def check_cart
    session[:cart] ||= Cart.new
  end
  
  def load_categories
    @categories = Category.all(:order => :title)
  end
end
