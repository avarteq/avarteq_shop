class CartController < FrontendController
  def edit_cart    
     @cart = session[:cart]
  end

  def remove_from_cart
    product = Product.find(params[:product_id])
    session[:cart].remove(product)
    @cart = session[:cart]
    
    render :update do |page|
      page.replace_html "edit_cart_table", :partial => 'edit_cart_table'
    end
  end

  def update_cart
  end
end
