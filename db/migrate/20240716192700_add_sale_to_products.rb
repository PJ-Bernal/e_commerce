class AddSaleToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :product_sale, :integer
  end
end
