class CartedProduct < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
  belongs_to :product

  def subtotal
    quantity * product.price
  end
end
