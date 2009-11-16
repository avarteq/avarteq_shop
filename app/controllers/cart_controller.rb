class CartController < FrontendController
  def edit_cart    
     @cart = session[:cart]
   end

   def update_cart
   end
end
