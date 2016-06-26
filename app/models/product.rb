class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :order
  has_many :order_items
  has_many :orders, :through => :order_items
  validates :name,  presence: true, length: { maximum: 15 }
end
