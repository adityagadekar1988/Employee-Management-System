class Permanent < Address 
  belongs_to :employee
  validates :first_line, :second_line, :city, :district, :state, :type, presence: true 
  validates :postal_code, presence: true, length: { is: 6 }
end