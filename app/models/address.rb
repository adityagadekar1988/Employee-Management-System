class Address < ApplicationRecord
  belongs_to :employee, inverse_of: :addresses 
end 
