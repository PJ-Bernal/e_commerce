ActiveAdmin.register Shipment do

  permit_params :shipment_address, :shipment_city, :shipment_zip_code, :shipment_date, :customer_id, :province_id

  
  form do |f|
    f.inputs 'Product details' do
      f.input :customer
      f.input :province
      f.input :shipment_address
      f.input :shipment_city
      f.input :shipment_zip_code
      f.input :shipment_date
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :date, :address, :city, :zip_code
  #
  # or
  #
  # permit_params do
  #   permitted = [:date, :address, :city, :zip_code]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
