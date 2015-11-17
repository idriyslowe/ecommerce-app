class ProductsController < ApplicationController
  def home
  end
  def index
    @product = Product.all
  end
  def santa_socks
    @product = []
    socks = Product.all
    socks.each do |socks|
      @product << socks if socks.name.include?("Santa")
    end
  end
  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
  end
  def new
  end
  def create #@sock variable unneccesary since view doesn't call the variable.
    @product = Product.create(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    redirect_to "/products"
  end
  def edit
    @product = Product.find_by(id: params[:id])
  end
  def update
    @product = Product.find_by(id: params[:id])
    @product.update(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    redirect_to "/products/#{@product.id}"
  end
  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
  end
end
