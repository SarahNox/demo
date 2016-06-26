class RemoveOrderitemFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :order_items, :string
    remove_column :orders, :quantity, :integer
  end
end
