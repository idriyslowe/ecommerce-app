class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: true
  # validates :price, numericality: {:greater_than 0}

  SALES_TAX = 0.09
  DISCOUNT_THRESHOLD = 10

  def readable_created_at
    created_at.strftime("%B %e, %Y")
  end
  def sale_message
    if price < DISCOUNT_THRESHOLD
      "Discount Item"
    else "On Sale"
    end
  end
  def tax
    tax = price * SALES_TAX
  end
  def after_tax_total
    price + tax
  end
end
