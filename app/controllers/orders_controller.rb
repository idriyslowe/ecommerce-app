class OrdersController < ApplicationController
  def create
    carted_products = CartedProduct.where(user_id: current_user.id).where(status: "carted")
    
    subtotal = 0
    carted_products.each do |carted_product|
      price = carted_product.product.price
      quantity = carted_product.quantity
      subtotal += price * quantity
    end

    tax = subtotal * Product::SALES_TAX
    total = subtotal + tax

    order = Order.create(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax, 
      total: total
      )

    carted_products.each do |product|
        product.update(
        order_id: order.id,
        status: "purchased"
        )
    end

    redirect_to "/orders/#{order.id}"
  end
  def show
    @order = Order.find_by(id: params[:id])
  end
end
