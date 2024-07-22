class ProfilesController < ApplicationController
  before_action :authenticate_customer!

  def show
    @customer = current_customer
    @shipments = @customer.shipments
    @new_shipment = @customer.shipments.build
  end

  def create_shipment
    @customer = current_customer
    @new_shipment = @customer.shipments.build(shipment_params)

    if @new_shipment.save
      redirect_to profile_path, notice: "Shipment address added successfully."
    else
      Rails.logger.debug @new_shipment.errors.full_messages.join(", ")
      @shipments = @customer.shipments
      flash.now[:alert] = @new_shipment.errors.full_messages.to_sentence
      render :show
    end
  end

  def select_shipment
    @customer = current_customer
    @selected_shipment = @customer.shipments.find(params[:shipment_id])
    session[:selected_shipment_id] = @selected_shipment.id
    redirect_to cart_path, notice: "Shipment address selected."
  end

  private

  def shipment_params
    params.require(:shipment).permit(:shipment_address, :shipment_city, :shipment_zip_code,
                                     :province_id)
  end
end
