class CartedProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def create
    if current_user
      carted_product = CartedProduct.create(
      quantity: params[:quantity], 
      user_id: current_user.id,
      product_id: params[:product_id],
      status: "carted"
      )
      redirect_to "/carted_products"
    else
      flash[:danger] = "You can't add products to your cart until you're logged in, silly!"
      redirect_to "/products"
    end
  end
  def index
    @carted_products = CartedProduct.where(user_id: current_user.id).where(status: "carted")
    redirect_to '/' if @carted_products.length == 0
  end
  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: "removed")
    flash[:success] = "You have deleted an item."
    redirect_to '/carted_products'
  end
end
