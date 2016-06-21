class AddTitleToProduct < ActiveRecord::Migration
  def change
    add_column :products, :title, :string
    add_column :products, :description, :text
    add_column :products, :price, :integer
  end
end
