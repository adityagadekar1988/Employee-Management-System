class AddEmployeeIdToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :employee_id, :int 
  end
end
