class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show, :search] 

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
    elsif params[:category]
      @product = Category.find_by(name: params[:category]).products
    else
      @product = Product.all
    end
  end
  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
  end
  def new
    unless current_user && current_user.admin
      redirect_to "/"
    end
  end
  def create
    if current_user && current_user.admin
      product = Product.create(name: params[:name], price: params[:price], description: params[:description])
      flash[:success] = "You've successfully created a new product!"
      redirect_to "/products"
    else
      redirect_to "/"
    end
  end
  def edit
    if current_user && current_user.admin
      @product = Product.find_by(id: params[:id])
    else
      redirect_to "/"
    end
  end
  def update
    if current_user && current_user.admin
      product = Product.find_by(id: params[:id])
      product.update(name: params[:name], price: params[:price], description: params[:description], inventory: params[:inventory])
      flash[:success] = "Hey! You updated this product!"
      redirect_to "/products/#{product.id}"
    else
      redirect_to "/"
    end
  end
  def destroy
    if current_user && current_user.admin
      product = Product.find_by(id: params[:id])
      product.destroy
      flash[:danger] = "Product DESTROYED!"
      redirect_to '/products'
    else
      redirect_to "/"
    end
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
  private

  def authenticate_admin!
    unless current_user && current_user.admin
      redirect_to "/"
    end
  end
end
