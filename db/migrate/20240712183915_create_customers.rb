class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.text :password

      t.timestamps
    end
  end
end
