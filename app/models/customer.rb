class Customer < ActiveRecord::Base
    validates :name, :address, :city, :country, :postal_code, presence: true
    validates :email, confirmation: true
    
    belongs_to :province
    has_many :orders
end
