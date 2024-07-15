ActiveAdmin.register Category do

  permit_params :category_name

  filter :category_name

  index do
    selectable_column
    id_column
    column :category_name
    column :created_at
    column :updated_at
    actions
  end

  show do
    attributes_table do
      row :category_name
      row :created_at
      row :updated_at
    end
  end

  

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #

  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
