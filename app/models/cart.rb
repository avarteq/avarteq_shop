class Cart
  attr_accessor :products
  
  def initialize
    @products = {}
  end
  
  def add(product)
    @products[product] ||= 0
    @products[product] += 1
  end
  
  def remove(product)
    if @products[product] then      
      @products[product] -= 1
      @products.delete(product) if @products[product] == 0      
    end
  end
  
  def empty?
    @products.empty?
  end
  
  def total
    sum = 0
    @products.each_pair do |product, amount|
      sum += product.price * amount
    end
    sum
  end
end