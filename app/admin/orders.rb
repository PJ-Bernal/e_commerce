ActiveAdmin.register Order do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :total_amount, :status, :customer_id, :province_id, :payment_id

  index do
    selectable_column
    id_column
    column :full_name do |name|
      name.customer.full_name
    end
    column :method do |order|
      order.payment.method
    end
    column :total_amount
    column :status
    actions
  end

  show do
    attributes_table do
      row :full_name do |name|
        name.customer.full_name
      end
      row :province
      row :method do |order|
        order.payment.method
      end
      row :total_amount
      row :status
      row :created_at
      row :updated_at
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:total_amount, :status, :customer_id, :province_id, :payment_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
