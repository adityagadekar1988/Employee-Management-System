class Address < ApplicationRecord
  belongs_to :employee, inverse_of: :addresses 
  validates :first_line, :second_line, :city, :district, :state, :type, presence: true 
  validates :postal_code, presence: true, length: { is: 6 }
end 
