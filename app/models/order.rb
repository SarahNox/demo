class Order < ActiveRecord::Base
  belongs_to :cart
  has_many :order_items
  has_many :products, :through => :order_items
  accepts_nested_attributes_for :order_items
end
