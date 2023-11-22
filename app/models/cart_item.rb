class CartItem < ApplicationRecord
  belongs_to :customer
  belongs_to :product

  def line_total
    return 0 if product.price.nil? || quantity.nil?
    product.price * quantity
  end  
end
