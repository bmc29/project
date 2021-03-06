class LineItem < ActiveRecord::Base
 validates :quantity, numericality: {greater_than_or_equal_to: 0}
 validates :price, numericality: {greater_than_or_equal_to: 0.01}

 belongs_to :product
 belongs_to :order 
end
