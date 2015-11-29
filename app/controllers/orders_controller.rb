class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    price = product.price
    quantity = params[:quantity].to_i
    subtotal = price * quantity
    tax = subtotal * Product::SALES_TAX
    total = subtotal + tax

    order = Order.create(
      quantity: params[:quantity], 
      user_id: current_user.id,
      product_id: params[:product_id],
      subtotal: subtotal,
      tax: tax, 
      total: total
      )
    redirect_to "/orders/#{order.id}"
  end
  def show
    @order = Order.find_by(id: params[:id])
  end
end
