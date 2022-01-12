class EmployeeDocument < ApplicationRecord
  belongs_to :employee
  belongs_to :document
  validates :document_id, uniqueness: { scope: :employee_id }
end
