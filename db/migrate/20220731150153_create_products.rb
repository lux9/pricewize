class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :views
      t.string :image_link
      t.timestamps
    end
  end
end
