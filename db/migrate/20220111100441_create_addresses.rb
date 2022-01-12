class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :category
      t.string :flat_no
      t.string :area 
      t.string :street_no
      t.string :landmark
      t.string :city
      t.string :district
      t.string :state 
      t.string :postal_code
    end
  end
end
