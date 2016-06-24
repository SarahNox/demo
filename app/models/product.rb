class Product < ActiveRecord::Base
  belongs_to :category
  validates :name,  presence: true, length: { maximum: 15 }
end
