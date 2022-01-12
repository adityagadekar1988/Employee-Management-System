class Employee < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :addresses, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :employee_document
  has_many :documents, through: :employee_document, dependent: :destroy 
  validates :name, :dob, :experience, :department, :designation, :joining_date, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, 
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end 