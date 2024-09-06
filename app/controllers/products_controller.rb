class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_product, only: [:edit, :update, :show, :destroy]

  def index
    @products = Product.all
    @user = current_user
    if params[:query].present?
      @products = Product.search_product(params[:query])
    end
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
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  def mysell
    @myproducts = Product.where(user_id: current_user.id)
  end

  def mybuy
    # todas mis compras (id en purchase)
    @purchase = Purchase.where(user_id: current_user.id)
    # juntar products con purchases y buscar con where dentro de purchase los registros con user_id = current_user.id
    @product = Product.joins(:purchases).where(purchases: { user_id: current_user.id }).all
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
