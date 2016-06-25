class AddOrderitemsToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :order_items, :string
    add_column :orders, :quantity, :integer
  end
end
