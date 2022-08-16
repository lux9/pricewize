class CategoriesController < ApplicationController
  # before_action :set_category, only: %i[ show edit update destroy ]
  before_action :set_category, only: %i[ show ]
  skip_before_action :authenticate_user!

  def show
    # @category.views += 1
    # @category.save
    # @new_price = Price.new
    
    @products = @category.products.order(views: :desc).page params[:page]

  end 

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end

end
