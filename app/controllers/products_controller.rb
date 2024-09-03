class ProductsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @product.destroy
    redirect_to products_path status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:nombre, :precio, :categoria, :artista)
  end

  def set_product
  end
end
