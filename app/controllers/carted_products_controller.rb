class CartedProductsController < ApplicationController
  def create
      carted_product = CartedProduct.create(
      quantity: params[:quantity], 
      user_id: current_user.id,
      product_id: params[:product_id],
      status: "carted"
      )
    redirect_to "/carted_products"
  end
  def index
    @carted_products = CartedProduct.where(user_id: current_user.id).where(status: "carted")
    redirect_to '/' if @carted_products.length == 0
  end
  def destroy
    carted_products = CartedProduct.where(carted_product_id: params[:carted_product_id]).where(user_id: current_user.id)
      deleted_product = carted_products.update(status: "removed")
    redirect_to '/carted_products'
  end
end
