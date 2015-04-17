class Product < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true 
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :stock_quantity, numericality: {greater_than_or_equal_to: 0}
   
    has_many :line_items
    has_many :orders, :through => :line_items
    belongs_to :category
end
