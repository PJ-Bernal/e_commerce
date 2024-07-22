class CartsController < ApplicationController
  before_action :authenticate_customer!

  def show
    @cart = current_customer.cart
    @selected_shipment = current_customer.shipments.find_by(id: session[:selected_shipment_id]) || current_customer.shipments.first
  end
end
