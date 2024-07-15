class RenameColumnNamesAgain < ActiveRecord::Migration[7.1]
  def change
    rename_column :categories, :categor_name, :category_name
  end
end
