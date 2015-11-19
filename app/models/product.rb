class Product < ActiveRecord::Base
  def readable_created_at
    created_at.strftime("%B %e, %Y")
  end
  def sale_message
    if price.to_i < 10
      "Discount Item"
    else "On Sale"
    end
  end
  def tax
    tax = price.to_f * 0.10
  end
  def after_tax_total
    price.to_f + tax
  end
end
