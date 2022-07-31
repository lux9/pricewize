class AddProductDefaultView < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :views
    add_column :products, :views, :integer, :null => false, :default => 0
  end
end
