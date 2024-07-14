class AddCustomerAndProvinceToShipments < ActiveRecord::Migration[7.1]
  def change
    add_reference :shipments, :customer, null: false, foreign_key: true
    add_reference :shipments, :province, null: false, foreign_key: true
  end
end
