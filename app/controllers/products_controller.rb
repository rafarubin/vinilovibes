class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    redirect_to products_path status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :category, :artist)
  end

  def set_product
  end
end
