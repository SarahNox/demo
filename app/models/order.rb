class Order < ActiveRecord::Base
  belongs_to :cart
  belongs_to :user
  has_many :order_items
  has_many :products, :through => :order_items
  validates :user_id, presence: true  
  # <= important
end
