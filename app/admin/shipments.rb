ActiveAdmin.register Shipment do

  permit_params :shipment_address, :shipment_city, :shipment_zip_code, :shipment_date, :customer_id, :province_id

  index do
    selectable_column
    id_column
    column :customer_id
    column :customer
    column :province_id
    column :date
    column :address
    column :city
    column :zip_code
    actions
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
