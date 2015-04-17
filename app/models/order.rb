class Order < ActiveRecord::Base
    
  validates :gst_rate, :pst_rate, :hst_rate , numericality: true
  
  has_many :line_items
  has_many :products, :through => :line_items
  belongs_to :customer
end
