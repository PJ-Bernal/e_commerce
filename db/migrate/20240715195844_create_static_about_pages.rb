class CreateStaticAboutPages < ActiveRecord::Migration[7.1]
  def change
    create_table :static_about_pages do |t|
      t.text :mission
      t.text :vision
      t.text :story
      t.text :value

      t.timestamps
    end
  end
end
