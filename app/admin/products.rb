ActiveAdmin.register Product do

  permit_params :name, :description, :price, :stock, :category_id

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description, :price, :stock, :category_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :price, :stock, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end