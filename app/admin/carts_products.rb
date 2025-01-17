ActiveAdmin.register CartsProduct do

  permit_params :cart_id, :product_id, :cart_product_quantity

  index do
    selectable_column
    id_column
    column :cart
    column :product
    column :cart_product_quantity
    column :created_at
    column :updated_at
    actions
  end



  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :cart_id, :product_id, :quantity
  #
  # or
  #
  # permit_params do
  #   permitted = [:cart_id, :product_id, :quantity]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
