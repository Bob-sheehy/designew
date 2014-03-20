class Order < ActiveRecord::Base
has_many :line_items, dependent: :destroy
PAYMENT_TYPES = [ "Check", "Credit card", "Visa", "MasterCard" ]


   def add_line_items_from_cart(cart) 
   cart.line_items.each do |item| 
   item.cart_id = nil 
   line_items << item 
   end 
 end
end
