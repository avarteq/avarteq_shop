class Customer < ActiveRecord::Base
  has_many :orders
  
  validates_presence_of :firstname, :lastname, :email
end
