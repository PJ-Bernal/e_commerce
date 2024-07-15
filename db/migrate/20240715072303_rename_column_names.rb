class RenameColumnNames < ActiveRecord::Migration[7.1]
  def change
    rename_column :carts_products, :quantity, :cart_product_quantity
    rename_column :categories, :name, :categor_name
    rename_column :customers, :email, :customer_email
    rename_column :customers, :password, :customer_password
    rename_column :customers, :full_name, :customer_full_name
    rename_column :orders, :total_amount, :order_total_amount
    rename_column :orders, :status, :order_status
    rename_column :payments, :amount, :payment_amount
    rename_column :payments, :status, :payment_status
    rename_column :products, :name, :product_name
    rename_column :products, :description, :product_description
    rename_column :products, :price, :product_price
    rename_column :products, :stock, :product_stock
    rename_column :provinces, :name, :province_name
    rename_column :provinces, :gst, :province_gst
    rename_column :provinces, :pst, :province_pst
    rename_column :provinces, :hst, :province_hst
    rename_column :shipments, :date, :shipment_date
    rename_column :shipments, :address, :shipment_address
    rename_column :shipments, :city, :shipment_city
    rename_column :shipments, :zip_code, :shipment_zip_code

  end
end
