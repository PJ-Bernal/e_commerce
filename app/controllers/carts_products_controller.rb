class CartsProductsController < ApplicationController
  before_action :set_cart, only: %i[create update destroy]

  def create
    @cart_product = @cart.carts_products.find_by(product_id: cart_product_params[:product_id])
    if @cart_product
      @cart_product.update(cart_product_quantity: @cart_product.cart_product_quantity + cart_product_params[:cart_product_quantity].to_i)
    else
      @cart_product = @cart.carts_products.new(cart_product_params)
    end

    if @cart_product.save
      redirect_to cart_path(@cart), notice: "Product added to cart."
    else
      redirect_to product_path(cart_product_params[:product_id]),
                  alert: "Unable to add product to cart."
    end
  end

  def update
    @cart_product = @cart.carts_products.find(params[:id])
    if @cart_product.update(cart_product_params)
      redirect_to cart_path(@cart), notice: "Quantity updated successfully."
    else
      redirect_to cart_path(@cart), alert: "Unable to update quantity."
    end
  end

  def destroy
    @cart_product = @cart.carts_products.find(params[:id])
    @cart_product.destroy
    redirect_to cart_path(@cart), notice: "Product removed from cart."
  end

  private

  def set_cart
    @cart = current_customer.cart || current_customer.create_cart
  end

  def cart_product_params
    params.require(:carts_product).permit(:product_id, :cart_product_quantity)
  end
end
