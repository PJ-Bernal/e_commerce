class ChangeNameColumnsInCustomersAgain < ActiveRecord::Migration[7.1]
  def change
    remove_column :customers, :first_name, :string
    remove_column :customers, :last_name, :string
    add_column :customers, :full_name, :text
  end
end
