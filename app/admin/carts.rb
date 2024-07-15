ActiveAdmin.register Cart do

  permit_params :customer_id

  form do |f|
    f.inputs 'Product details' do
      f.input :customer, as: :select, collection: Customer.all.collect { |customer| [customer.customer_full_name, customer.id] }, include_blank: false
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :customer
    column :created_at
    column :updated_at
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params 
  #
  # or
  #
  # permit_params do
  #   permitted = []
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
