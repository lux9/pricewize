class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.integer :sales
      t.integer :rate
      t.integer :price
      t.references :product, null: false, foreign_key: true
      t.timestamps
    end
  end
end
