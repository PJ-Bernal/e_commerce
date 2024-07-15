ActiveAdmin.register Payment do

  permit_params :payment_method, :payment_amount, :payment_status, :customer_id



  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :method, :amount, :status, :customer_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:method, :amount, :status, :customer_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
