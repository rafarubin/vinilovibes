class PurchasesController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.user = current_user
    @purchase.product = Product.find(params[:product_id])
    @product = Product.find(params[:product_id])
    @product.sold = true
    if @purchase.save
      redirect_to product_path(@purchase.product), notice: 'Compra realizada con éxito.'
    else
      render :new, alert: 'Error al realizar la compra.', status: :unprocessable_entity
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:user_id)
  end
end
