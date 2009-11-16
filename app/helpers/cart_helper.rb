module CartHelper
  def cart_item_id(product)
    "cart_item_" + product.id.to_s
  end
end
