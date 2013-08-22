class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:notice] = "Product berhasil dibuat."
      redirect_to @product
    else
      flash[:alert] = "Product gagal dibuat"
      render :action => "new"
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
