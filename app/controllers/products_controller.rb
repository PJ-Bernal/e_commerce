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
    @cart_product = CartsProduct.new
  end

  def on_sale
    @products = Product.where(product_sale: 1).page(params[:page]).per(12)
  end

  def search
    @products = Product.all
    if params[:keyword].present?
      @products = @products.where("product_name LIKE ? OR product_description LIKE ?",
                                  "%#{params[:keyword]}%", "%#{params[:keyword]}%")
    end
    @products = @products.where(category_id: params[:category_id]) if params[:category_id].present?
    @products = @products.where(product_sale: params[:sale]) if params[:sale].present?
    if params[:min_price].present?
      @products = @products.where("product_price >= ?", params[:min_price])
    end
    if params[:max_price].present?
      @products = @products.where("product_price <= ?", params[:max_price])
    end
    @products = @products.page(params[:page]).per(12)
    render :search_results
  end
end
