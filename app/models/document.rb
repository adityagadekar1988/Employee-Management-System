class Document < ApplicationRecord
  has_many :employee_document
  has_many :employees, through: :employee_document
  validates :document_name, presence: true, length: { maximum: 20 }
end 