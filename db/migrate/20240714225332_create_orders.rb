class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.decimal :total_amount, precision: 10, scale: 2, null: false, default: 0.0
      t.text :status
      t.references :customer, null: false, foreign_key: true
      t.references :province, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
