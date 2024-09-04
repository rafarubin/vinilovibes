class PurchasesController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @purchase = Purchase.new
  end

  def create

  end

  private

  def purchase_params

  end
end
