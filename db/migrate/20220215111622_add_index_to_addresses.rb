class AddIndexToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_index :addresses, [:type, :employee_id]
  end
end
