class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.text :name
      t.text :description
      t.decimal :price
      t.integer :stock

      t.timestamps
    end
  end
end
