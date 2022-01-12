class Address < ApplicationRecord
  belongs_to :employee 
  validates :category, :flat_no, :area, :street_no, :city, :district, :state, presence: true 
  validates :postal_code, presence: true, length: { is: 6 }
end 