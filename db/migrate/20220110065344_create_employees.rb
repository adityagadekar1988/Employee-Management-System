class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.date :dob 
      t.string :experience
      t.string :department
      t.string :designation
      t.date :joining_date 
      t.timestamps
    end
  end
end
