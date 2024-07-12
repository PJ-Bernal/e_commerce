class CreateJoinTableCartsProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :carts_products do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity, null: false, default: 1

      t.timestamps
    end
  end
end
