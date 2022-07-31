class PricesController < ApplicationController
  # before_action :set_price, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!
  def create
    @new_price = Price.new(price_params)
    @new_price.product = Product.find(params[:product_id])
    @new_price.save
    redirect_to product_path(@new_price.product)
  end
  
  private
  
  # Only allow a list of trusted parameters through.
  def price_params
    params.require(:price).permit(:price)
  end
end
