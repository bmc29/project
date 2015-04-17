class Province < ActiveRecord::Base
   validates :province_name, presence: true
   validates :gst, :pst, :hst, numericality: true
   
   has_many :customers
end