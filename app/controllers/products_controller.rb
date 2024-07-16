class ProductsController < ApplicationController
  def index
    @products = Product.order("RANDOM()").limit(12)
  end

  def category
    @category_id = params[:category_id]
    @products = Product.where(category_id: @category_id).page(params[:page]).per(12)
  end

  def show
    @product = Product.find(params[:id])
  end

  def on_sale
    @products = Product.where(product_sale: 1).page(params[:page]).per(12)
  end
end
