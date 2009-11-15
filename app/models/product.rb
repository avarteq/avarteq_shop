class Product < ActiveRecord::Base
  belongs_to :category
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  named_scope :in_category, lambda { |*args| {:conditions => ["category_id = ?", (args.first || Category.first)]} }
  
end
