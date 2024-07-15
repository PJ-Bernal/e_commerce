class CreateStaticContactPages < ActiveRecord::Migration[7.1]
  def change
    create_table :static_contact_pages do |t|
      t.text :title
      t.text :engaging_paragraph
      t.integer :contact_number
      t.text :location
      t.text :email

      t.timestamps
    end
  end
end
