ActiveAdmin.register Shipment do

  permit_params :address, :city, :zip_code, :date, :customer_id, :province



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
