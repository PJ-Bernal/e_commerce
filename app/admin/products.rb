ActiveAdmin.register Product do

  permit_params :product_name, :product_description, :product_price, :product_stock, :category_id, :image

  filter :product_name
  filter :product_description
  filter :product_price
  filter :product_stock
  filter :category


  index do
    selectable_column
    id_column
    column :category
    column :product_name
    column :product_description
    column :product_price
    column :product_stock
    column :created_at
    column :updated_at
    column :image_url do |img|
      if img.image.present?
        image_tag url_for(img.image), style: 'max-width: 250px; margin:auto; display:block;'
      else
        'No image uploaded'
      end
    end 
    actions
  end


  form do |f|
    f.inputs 'Product details' do
      f.input :category, as: :select, collection: Category.all.collect { |category| [category.category_name, category.id] }, include_blank: false
      f.input :product_name
      f.input :product_description
      f.input :product_price
      f.input :product_stock
      f.input :image, as: :file
    end
    f.actions
  end

  show do |product|
    attributes_table do
      row :product_name
      row :product_description
      row :product_price
      row :product_stock
      row :category
      row :'download the image' do |ad|
        if product.image.attached?
          link_to ad.image.filename, rails_blob_path(ad.image, disposition: 'attachment') if ad.image.attached?
        else
          'No image has been uploaded'
        end
      end
      row :file do |ad|
        if product.image.attached?
          image_tag url_for(ad.image), style: 'max-width: 400px; margin:auto; display:block;'
        else
          'No image has been uploaded'
        end
      end
    end
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
