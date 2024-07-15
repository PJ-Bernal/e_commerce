ActiveAdmin.register Payment do

  permit_params :payment_method, :amount, :status, :customer_id

  filter :method



  show do
    attributes_table do
      row :customer
      row :payment_method
      row :amount
      row :status
      row :created_at
      row :updated_at
    end
  end


  
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
