class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.text :method, null: false
      t.decimal :amount, precision: 10, scale: 2, null: false, default: 0.0
      t.text :status, null: false

      t.timestamps
    end
  end
end
