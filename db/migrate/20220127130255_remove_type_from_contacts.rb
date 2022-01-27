class RemoveTypeFromContacts < ActiveRecord::Migration[7.0]
  def change
    remove_column :contacts, :contact_type, :string
  end
end
