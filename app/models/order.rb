class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_items

  # Creates an order model by a given customer and shopping cart.
  def self.build_from_cart!(customer, cart)
    order = Order.new
    order.customer = customer
    cart.products.each_pair do |product, amount|
      order_item = OrderItem.new(:product => product, :amount => :amount)
      order.order_items << order_item
    end
    order.save!
    order
  end
end
