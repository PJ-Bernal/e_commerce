ActiveAdmin.register Product do

  permit_params :product_name, :product_description, :product_price, :product_stock, :category_id


  form do |f|
    f.inputs 'Product details' do
      f.input :category, as: :select, collection: Category.all.collect { |category| [category.category_name, category.id] }, include_blank: false
      f.input :product_name
      f.input :product_description
      f.input :product_price
      f.input :product_stock
    end
    f.actions
  end

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
