class SuppliersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @supplier = Supplier.all
  end
  def new
    @supplier = Supplier.new
  end
  def create
    @supplier = Supplier.create(supplier_params)
    redirect_to "/suppliers/#{@supplier.id}"
  end
  def show
    @supplier = Supplier.find_by(id: params[:id])
  end
  def edit
    @supplier = Supplier.find_by(id: params[:id])
  end
  def update
    @supplier = Supplier.find_by(supplier_params)
    @supplier.update(params[:supplier])
    redirect_to "/suppliers/#{@supplier.id}"
  end
  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.update(active: false)
    redirect_to "/suppliers"
  end
  def supplier_params
    params.require(:supplier).permit(:name, :email, :phone)
  end
  private

  def authenticate_admin!
    unless current_user && current_user.admin
      redirect_to "/products"
    end
  end
end
