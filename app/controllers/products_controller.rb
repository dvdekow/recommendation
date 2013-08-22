class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    @product.save
    flash[:notice] = "Product berhasil dibuat."
    redirect_to @product
  end

  def show
    @product = Product.find(params[:id])
  end
end
