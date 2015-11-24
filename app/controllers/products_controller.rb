class ProductsController < ApplicationController
  def home
  end
  def index
    search_bar = params[:search]
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    if sort_attribute && sort_order
      @product = Product.order(sort_attribute => sort_order)
    elsif search_bar
      @product = Product.where("name LIKE ? OR description LIKE ? OR price LIKE ?", "%#{search_bar}%", "%#{search_bar}%", "%#{search_bar}%")
    else
      @product = Product.all
    end
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
  def create
    product = Product.create(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    flash[:success] = "You've successfully created a new product!"
    redirect_to "/products"
  end
  def edit
    @product = Product.find_by(id: params[:id])
  end
  def update
    product = Product.find_by(id: params[:id])
    product.update(name: params[:name], price: params[:price], image: params[:image], description: params[:description], inventory: params[:inventory])
    flash[:success] = "Hey! You updated this product!"
    redirect_to "/products/#{product.id}"
  end
  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    flash[:danger] = "Product DESTROYED!"
    redirect_to '/products'
  end
  def discount
    @product = Product.where("price < ?", 20)
  end
  def random
    @product = Product.all.sample
  end
  # def search
  #   @product = Product.where("name LIKE ? OR description LIKE ? OR price LIKE ?", "%#{search_bar}%", "%#{search_bar}%", "%#{search_bar}%")
  # end
end
