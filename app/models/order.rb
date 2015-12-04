class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  has_many :carted_products
  has_many :products, through: :carted_products
  has_one :user, through: :carted_products

  validates :user_id, presence: true
end
