class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_product, only: [:edit, :update, :show, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product), notice: 'Producto creado exitosamente.'
    else
      render :new, alert: 'Error al crear el producto.'
    end

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
    params.require(:product).permit(:name, :price, :category, :artist, :user_id)
  end

  def set_product
    @product = Product.find_by(id: params[:id])
    redirect_to products_path, alert: "El vinilo no existe" if @product.nil?
  end
end
