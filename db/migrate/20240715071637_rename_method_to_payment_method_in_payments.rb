class RenameMethodToPaymentMethodInPayments < ActiveRecord::Migration[7.1]
  def change
    rename_column :payments, :method, :payment_method
  end
end
