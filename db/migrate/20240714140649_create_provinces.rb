class CreateProvinces < ActiveRecord::Migration[7.1]
  def change
    create_table :provinces do |t|
      t.text :name, null: false
      t.decimal :gst, precision: 10, scale: 2, null: false, default: 0.0
      t.decimal :pst, precision: 10, scale: 2, null: false, default: 0.0
      t.decimal :hst, precision: 10, scale: 2, null: false, default: 0.0

      t.timestamps
    end
  end
end
