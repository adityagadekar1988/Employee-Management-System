class Contact < ApplicationRecord
  belongs_to :employee
  validates :contact_no, presence: true, uniqueness: true,
            length: { minimum: 10, maximum: 13 }, format: { with: /\A([0]|\+91)?\d{10}\z/ }
end 