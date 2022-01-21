class Employee < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :addresses, dependent: :destroy
  accepts_nested_attributes_for :addresses 
  validates_associated :addresses

  has_many :contacts, dependent: :destroy
  accepts_nested_attributes_for :contacts
  validates_associated :contacts

  has_many :employee_documents, dependent: :destroy 
  accepts_nested_attributes_for :employee_documents
  has_many :documents, through: :employee_documents
  
  validates :name, :dob, :experience, :department, :designation, :joining_date, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, 
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end 