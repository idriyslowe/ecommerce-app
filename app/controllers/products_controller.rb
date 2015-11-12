class ProductsController < ApplicationController
  def home
  end
  def products
    @product = Product.all
  end
  def santa_socks
    @product = []
    socks = Product.all
    socks.each do |socks|
      @product << socks if socks.name.include?("Santa")
    end
  end
end
