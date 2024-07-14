class CreateShipments < ActiveRecord::Migration[7.1]
  def change
    create_table :shipments do |t|
      t.datetime :date, null: false
      t.text :address, null: false
      t.text :city, null: false
      t.text :zip_code, null: false

      t.timestamps
    end
  end
end
