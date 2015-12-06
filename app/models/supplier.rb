class Supplier < ActiveRecord::Base
  has_many :products
#above code is like an attr_reader for calling all products associated with each supplier... just call supplier.products

#create controller and views for this if you want people to be able to look at lists of all products by this supplier.
end
