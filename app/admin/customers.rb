ActiveAdmin.register Customer do
  permit_params :first_name, :last_name, :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :created_at
    column :updated_at
    actions
  end

  filter :first_name
  filter :last_name
  filter :email
  filter :created_at

end
