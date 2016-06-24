class Price < ActiveRecord::Base
  belongs_to :product
  validates :integer,  presence: true, length: { maximum: 5 }
end
