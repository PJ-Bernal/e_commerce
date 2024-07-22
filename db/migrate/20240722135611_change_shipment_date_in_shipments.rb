class ChangeShipmentDateInShipments < ActiveRecord::Migration[7.1]
  def change
    change_column :shipments, :shipment_date, :datetime, null: true
  end
end
