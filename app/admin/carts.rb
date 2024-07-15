ActiveAdmin.register Cart do

  permit_params :customer_id

  index do
    selectable_column
    id_column
    column :created_at
    column :updated_at
    column :customer_id
    actions
  end

  form do |f|
    f.inputs do
      f.input :customer_id
    end
    f.actions
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
