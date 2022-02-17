class Employee < ApplicationRecord
  before_save { self.email = email.downcase
                self.name = name.titleize }
  has_many :addresses, dependent: :destroy, inverse_of: :employee
  validates_presence_of :addresses
  accepts_nested_attributes_for :addresses, allow_destroy: true
  validates_associated :addresses

  has_many :contacts, dependent: :destroy, inverse_of: :employee
  validates_presence_of :contacts 
  accepts_nested_attributes_for :contacts, allow_destroy: true
  validates_associated :contacts

  has_many :employee_documents, dependent: :destroy 
  
  has_many :documents, through: :employee_documents
  accepts_nested_attributes_for :documents, allow_destroy: true 
  
  validates :name, :dob, :experience, :department, :designation, :joining_date, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, 
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end 
