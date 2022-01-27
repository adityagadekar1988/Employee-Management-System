class MakeChangesToAddressTable < ActiveRecord::Migration[7.0]
  def change
    change_table :addresses do |t|
      t.remove :category, :flat_no
      t.rename :area, :first_line
      t.rename :street_no, :second_line
    end    
  end
end
