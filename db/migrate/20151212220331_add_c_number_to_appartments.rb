class AddCNumberToAppartments < ActiveRecord::Migration
  def change
    add_column :appartments, :c_number, :string
  end
end
