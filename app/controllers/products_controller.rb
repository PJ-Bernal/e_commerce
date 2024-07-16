class ProductsController < ApplicationController
  def index
    @products = Product.order("RANDOM()").limit(12)
  end

  def category
    @category_id = params[:category_id]
    @products = Product.where(category_id: @category_id).page(params[:page]).per(12)
  end
end
