class AddOrderitems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :product_id
      t.integer :quantity
    end 
  end
end
