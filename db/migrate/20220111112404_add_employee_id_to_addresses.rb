class AddEmployeeIdToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :employee_id, :int 
  end
end
