class ProductsController < ApplicationController
  def index
    @products = Product.all

    if params[:filter] == "on_sale"
      @products = @products.where(on_sale: true)
    elsif params[:filter] == "new_products"
      @products = @products.where("created_at >= ?", 3.days.ago)
    elsif params[:filter] == "recently_updated"
      @products = @products.where("updated_at >= ?",
                                  3.days.ago).where.not(id: Product.where("created_at >= ?",
                                                                          3.days.ago).pluck(:id))
    end

    @products = @products.order("RANDOM()").limit(20)
  end
end
