class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def subtotal
    product.price * quantity
  end

  def product_tax
    product.tax * quantity
  end

  def order_total
    subtotal + product_tax
  end

end
