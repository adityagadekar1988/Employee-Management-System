class CreateEmployeeDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_documents do |t|
      t.integer :employee_id
      t.integer :document_id
    end
  end
end
