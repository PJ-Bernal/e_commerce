class AddCustomerToPayments < ActiveRecord::Migration[7.1]
  def change
    add_reference :payments, :customer, null: false, foreign_key: true
  end
end
