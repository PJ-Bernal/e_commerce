ActiveAdmin.register Order do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :order_total_amount, :order_status, :customer_id, :province_id, :payment_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:total_amount, :status, :customer_id, :province_id, :payment_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
