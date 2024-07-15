ActiveAdmin.register Customer do
  permit_params :customer_full_name, :customer_email, :customer_password

  index do
    selectable_column
    id_column
    column :customer_full_name
    column :customer_email
    column :created_at
    column :updated_at
    actions
  end

  filter :customer_email
  filter :created_at

end
